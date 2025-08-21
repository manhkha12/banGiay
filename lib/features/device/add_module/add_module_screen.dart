import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_cubit.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_state.dart';
import 'package:smart_home/features/device/add_module/widgets/select_wifi_page.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';
import 'package:smart_home/shared/widgets/simple_toastification.dart';

import 'widgets/connecting_modal.dart';
import 'widgets/guide_to_connect.dart';

class AddModuleScreen extends StatefulWidget {
  const AddModuleScreen({super.key});

  @override
  State<AddModuleScreen> createState() => _AddModuleScreenState();
}

class _AddModuleScreenState extends State<AddModuleScreen> {
  bool _isDisplayIntro = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AddModuleCubit, AddModuleState>(
          listenWhen: (previous, current) =>
              !previous.gettingInfoFailed && current.gettingInfoFailed,
          listener: (_, state) {
            setState(() {
              _isDisplayIntro = true;
            });
            showErrorToast(
              'module.get_device_info_failed'.tr(),
              description: 'module.check_again'.tr(),
            );
          },
        ),
        BlocListener<AddModuleCubit, AddModuleState>(
          listenWhen: (previous, current) =>
              !previous.isConnectFailed && current.isConnectFailed,
          listener: (_, state) {
            showErrorToast(
              'module.connect_failed'.tr(),
              description: 'module.check_again'.tr(),
            );
          },
        ),
        BlocListener<AddModuleCubit, AddModuleState>(
          listenWhen: (previous, current) =>
              !previous.isConnecting && current.isConnecting,
          listener: (_, state) {
            if (state.isConnecting) {
              showDialog(
                context: context,
                builder: (_) => const ConnectingModal(),
              );
            }
          },
        ),
        BlocListener<AddModuleCubit, AddModuleState>(
          listenWhen: (previous, current) =>
              previous.isConnecting && !current.isConnecting,
          listener: (_, state) {
            context.hideLoadingDialog();
          },
        ),
        BlocListener<AddModuleCubit, AddModuleState>(
          listenWhen: (previous, current) => current.addedModule != null,
          listener: (_, state) {
            showSuccessToast(
              'module.add_device_success'.tr(),
            );
            Navigator.of(context).pushReplacementNamed(
              RouteName.main,
              //   arguments: {
              //     'module.title'.tr(): state.addedModule,
              // //   },
            );
          },
        )
      ],
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'module.add_device'.tr(),
        ),
        body: _isDisplayIntro
            ? GuideToConnect(
                onNext: () {
                  setState(() {
                    _isDisplayIntro = false;
                  });
                  context.read<AddModuleCubit>().getDeviceInfo();
                },
              )
            : const SelectWiFiPage(),
      ),
    );
  }
}
