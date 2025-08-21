import 'dart:async';

import 'package:collection/collection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/models/short_device_info.dart';
import 'package:smart_home/repository/module_repository.dart';
import 'package:smart_home/repository/user_repository.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';
import 'package:smart_home/shared/utils/async_utils.dart';

import 'add_module_state.dart';
export 'add_module_state.dart';

class AddModuleCubit extends Cubit<AddModuleState> {
  final ModuleRespository moduleRespository;
  final UserRepository userRepository;
  final AppCubit appCubit;

  AddModuleCubit({
    required this.appCubit,
    required this.moduleRespository,
    required this.userRepository,
  }) : super(AddModuleState()) {
    emit(
      state.copyWith(
        ownerId: appCubit.state.maybeWhen(
          authorized: (user) => user.id,
          orElse: () => null,
        ),
      ),
    );
  }

  Future<void> getDeviceInfo() async {
    if (!state.isReady) {
      return;
    }
    try {
      emit(state.copyWith(isGettingInfo: true));
      final deviceResp = await moduleRespository.getDeviceInfo();
      print('✅ Device info: $deviceResp');
      print('➡️ Getting nearby WiFi...');
      final wifiResp = await retryableWrapper<List<WiFiInfo>>(
        () => moduleRespository.getNearbyWiFi(),
        retryWhen: (resp) {
          print('🔁 Retry condition triggered, resp.isEmpty: ${resp.isEmpty}');
          return resp.isEmpty;
        },
        // retryWhen: (resp) => resp.isEmpty,

        retryInterval: const Duration(seconds: 1),
        timeout: const Duration(minutes: 1),
      );
      emit(
        state.copyWith(
          isGettingInfo: false,
          deviceInfo: deviceResp,
          nearbyWifi: wifiResp,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isGettingInfo: false, gettingInfoFailed: true));
    } finally {
      await Future.delayed(const Duration(milliseconds: 1));
      emit(state.copyWith(gettingInfoFailed: false));
    }
  }

  Future<void> refreshNearbyWifi() async {
    if (state.isRefreshing) {
      return;
    }
    try {
      emit(state.copyWith(isRefreshing: true));
      final wifiResp = await retryableWrapper<List<WiFiInfo>>(
        () => moduleRespository.getNearbyWiFi(),
        retryWhen: (resp) => resp.isEmpty,
        retryInterval: const Duration(seconds: 1),
        timeout: const Duration(minutes: 1),
      );
      emit(
        state.copyWith(
          isRefreshing: false,
          nearbyWifi: wifiResp,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isRefreshing: false, gettingInfoFailed: true));
    } finally {
      await Future.delayed(const Duration(milliseconds: 1));
      emit(state.copyWith(gettingInfoFailed: false));
    }
  }

  Future<void> connect(String ssid, String password) async {
    if (state.isConnecting || state.deviceInfo == null) {
      return;
    }
    try {
      emit(state.copyWith(isConnecting: true));
      print('isConnecting before: ${state.isConnecting}');
      await moduleRespository.connectWifi(ssid, password, state.ownerId!);
      await Future.delayed(const Duration(seconds: 10));
      await retryableWrapper(
        Connectivity().checkConnectivity,
        retryWhen: (results) =>
            results.equals([ConnectivityResult.none]) ||
            results.equals([ConnectivityResult.bluetooth]),
        retryInterval: const Duration(seconds: 5),
        timeout: const Duration(minutes: 3),
      );
      final addedModule = await retryableWrapper(
        () => moduleRespository.moduleDetails(state.deviceInfo!.chipId),
        retryWhen: (resp) =>
            resp.activeAt == null || resp.ownerId != state.ownerId,
        retryInterval: const Duration(seconds: 10),
        timeout: const Duration(minutes: 2),
      );
      emit(state.copyWith(
        isConnecting: false,
        addedModule: addedModule,
      )); //addedModule: addedModule
    } catch (e) {
      print('❌ Error connecting to WiFi: $e');
      emit(state.copyWith(isConnecting: false, isConnectFailed: true));
    } finally {
      await Future.delayed(const Duration(milliseconds: 1));
      emit(state.copyWith(isConnectFailed: false));
    }
  }
}
