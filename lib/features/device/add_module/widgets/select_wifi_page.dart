import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_cubit.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_bottom_sheet.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_icon.dart';

import 'wifi_credential_modal.dart';

class SelectWiFiPage extends StatelessWidget {
  const SelectWiFiPage({super.key});

  Future<void> _inputWiFiCredential(
    BuildContext context, {
    String? ssid,
  }) async {
    final result = await showAppBottomsheet(
      context: context,
      child: WifiCredentialModal(
        ssid: ssid,
      ),
    );
    if (result is Map) {
      context.read<AddModuleCubit>().connect(
            result['ssid'],
            result['pass'],
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddModuleCubit, AddModuleState>(
      builder: (context, state) {
        if (state.isGettingInfo) {
          return const _FetchingDeviceInfo();
        }
        if (state.deviceInfo != null) {
          final deviceInfo = state.deviceInfo!;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const AppText('Mã thiết bị', fontSize: 16),
                      Expanded(
                        child: AppText(
                          deviceInfo.chipId,
                          fontSize: 16,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const AppText('Loại thiết bị', fontSize: 16),
                      Expanded(
                        child: AppText(
                          deviceInfo.mcuType,
                          fontSize: 16,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: AppText(
                          'Danh sách WiFi khả dụng',
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<AddModuleCubit>().refreshNearbyWifi();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: BlocSelector<AddModuleCubit, AddModuleState, bool>(
                            selector: (state) => state.isRefreshing,
                            builder: (context, isRefreshing) {
                              if (isRefreshing) {
                                return const _RefreshingIcon();
                              }
                              return Assets.icons.refresh.svg(
                                color: context.colors.textSecondary,
                                width: 20,
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      final wifi = state.nearbyWifi[index];
                      return InkWell(
                        onTap: () {
                          _inputWiFiCredential(context, ssid: wifi.ssid);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: AppText(
                                  wifi.ssid,
                                  fontSize: 18,
                                ),
                              ),
                              Transform.rotate(
                                angle: -45 * pi / 180,
                                origin: const Offset(-15, 0),
                                child: SignalStrengthIndicator.sector(
                                  value: wifi.signalStrength,
                                  size: 20,
                                  inactiveColor: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => const Divider(
                      thickness: 0.5,
                    ),
                    itemCount: state.nearbyWifi.length,
                  ),
                  InkWell(
                    onTap: () {
                      _inputWiFiCredential(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: AppTextIcon(
                        'Thêm mạng',
                        icon: Assets.icons.plus.path,
                        iconColor: Colors.blueAccent,
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _RefreshingIcon extends StatefulWidget {
  const _RefreshingIcon();

  @override
  State<_RefreshingIcon> createState() => __RefreshingIconState();
}

class __RefreshingIconState extends State<_RefreshingIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Assets.icons.refresh.svg(color: context.colors.textSecondary, width: 20),
    );
  }
}

class _FetchingDeviceInfo extends StatelessWidget {
  const _FetchingDeviceInfo();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            Assets.images.homeService,
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 16),
          const AppText(
            'Đang lấy thông tin thiết bị...',
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}
