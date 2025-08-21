import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/repository/module_repository.dart';
import 'package:smart_home/repository/user_repository.dart';

import 'module_state.dart';
export 'module_state.dart';

class ModuleCubit extends Cubit<ModuleState> {
  final ModuleRespository moduleRespository;
  final UserRepository userRepository;

  ModuleCubit({
    required this.moduleRespository,
    required this.userRepository,
  }) : super(ModuleState()) {
    // onSocket();
  }

  // void onModuleAdded(dynamic data) {
  //   getModules();
  // }

  // void onSensorUpdate(dynamic data) {
  //   log('Sensor value changed $data');
  //   _updateModule(
  //     data['module_id'],
  //     moduleSensorId: data['module_sensor_id'],
  //     sensorState: data['state'],
  //     sensorValue:
  //         data['value'] != null ? double.parse(data['value'].toString()) : null,
  //     updatedAt: data['updated_at'],
  //   );
  // }

  // void onNodeUpdate(dynamic data) {
  //   log('Node state changed $data');
  //   _updateModule(
  //     data['module_id'],
  //     gpioKey: data['gpio_key'],
  //     nodeState: data['state'],
  //   );
  // }

  // void onModuleUpdate(dynamic data) {
  //   log('Module state changed $data');
  //   _updateModule(data['module_id'], isOnline: data['is_online']);
  // }

  // void _updateModule(
  //   String moduleId, {
  //   bool? isOnline,
  //   int? gpioKey,
  //   int? nodeState,
  //   String? moduleSensorId,
  //   double? sensorValue,
  //   int? sensorState,
  //   int? updatedAt,
  // }) {
  //   final modules = state.modules.map((m) {
  //     if (m.id == moduleId) {
  //       final updatedSensors = (moduleSensorId != null)
  //           ? m.sensors.map((s) {
  //               return (s.id == moduleSensorId)
  //                   ? s.copyWith(
  //                       value: sensorValue,
  //                       state: sensorState,
  //                       updatedAt:
  //                           DateTime.fromMillisecondsSinceEpoch(updatedAt!),
  //                     )
  //                   : s;
  //             }).toList()
  //           : m.sensors;
  //       final updatedNodes = (gpioKey != null)
  //           ? m.nodes.map((n) {
  //               return (n.gpioKey == gpioKey)
  //                   ? n.copyWith(state: nodeState ?? n.state)
  //                   : n;
  //             }).toList()
  //           : m.nodes;
  //       return m.copyWith(
  //         isOnline: isOnline ?? m.isOnline,
  //         sensors: updatedSensors,
  //         nodes: updatedNodes,
  //       );
  //     }
  //     return m;
  //   }).toList();
  //   emit(state.copyWith(modules: modules));
  // }

  Future<void> getModules({bool isRefreshing = false}) async {
    try {
      emit(state.copyWith(isLoading: !isRefreshing));
      final modules = await moduleRespository.getModules();
      emit(state.copyWith(modules: modules, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  // void offSocket() {
  //   userRepository.socket
  //     ?..off(SocketEvent.SENSOR_UPDATED.value, onSensorUpdate)
  //     ..off(SocketEvent.NODE_CHANGED.value, onNodeUpdate)
  //     ..off(SocketEvent.MODULE_STATE.value, onModuleUpdate)
  //     ..off(SocketEvent.MODULE_ADDED.value, onModuleAdded);
  // }

  // void onSocket() {
  //   userRepository.socket
  //     ?..on(SocketEvent.SENSOR_UPDATED.value, onSensorUpdate)
  //     ..on(SocketEvent.NODE_CHANGED.value, onNodeUpdate)
  //     ..on(SocketEvent.MODULE_STATE.value, onModuleUpdate)
  //     ..on(SocketEvent.MODULE_ADDED.value, onModuleAdded);
  // }

  // void updateNodeTimers(
  //     String moduleId, String nodeId, List<NodeTimer> timers) {
  //   final modules = state.modules.map((m) {
  //     if (m.id == moduleId) {
  //       final updatedNodes = m.nodes.map((n) {
  //         if (n.id == nodeId) {
  //           return n.copyWith(timers: timers);
  //         }
  //         return n;
  //       }).toList();
  //       return m.copyWith(nodes: updatedNodes);
  //     }
  //     return m;
  //   }).toList();

  //   emit(state.copyWith(modules: modules));
  // }

  // @override
  // Future<void> close() {
  //   offSocket();
  //   return super.close();
  // }
}
