import 'dart:async';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/module_page/module_app_bar.dart';
import 'package:smart_home/features/device/module_page/module_cubit/module_cubit.dart';
import 'package:smart_home/features/device/module_page/module_item.dart';
import 'package:smart_home/features/device/module_page/no_module.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/shared/cubits/socket_cubit/socket_cubit.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_circle_loading.dart';


class ModulePage extends StatefulWidget {
  const ModulePage({super.key});

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> with WidgetsBindingObserver {
  ModuleCubit get moduleCubit => context.read<ModuleCubit>();
//SocketMixin
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    scheduleMicrotask(() {
      moduleCubit.getModules();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      moduleCubit.getModules(isRefreshing: true);
    }
  }

  // @override
  // void onSocketConnected() {
  //   moduleCubit.onSocket();
  // }

  // @override
  // void onSocketDisconnected() {
  //   moduleCubit.offSocket();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primaryBackground,
      appBar: ModuleAppBar(
        title: 'module.device'.tr(),
      ),
      body: BlocBuilder<ModuleCubit, ModuleState>(
        builder: (context, state) {
          final isLoading = state.isLoading;
          if (isLoading) {
            return const Center(child: AppCircleLoading());
          }
          final modules = state.modules;
          if (modules.isEmpty) {
            return const NoModules();
          }
          return Padding(
            padding: const EdgeInsets.all(10),
            child: CustomScrollView(
              slivers: [
                SliverDynamicHeightGridView(
                  builder: (_, index) {
                    return ModuleItem(module: modules[index]);
                  },
                  itemCount: modules.length,
                  crossAxisCount: 2,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
