import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';

import 'package:shoe_store/features/setting/setting_header.dart';
import 'package:shoe_store/gen/assets.gen.dart';

import 'package:shoe_store/routes.dart';
import 'package:shoe_store/shared/cubits/app_cubit/app_cubit.dart';
import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'settings.title'.tr(),
        titleFontSize: 20,
        titleFontWeight: FontWeight.bold,
        actions: [
          InkWell(
            onTap: () {
              context.read<AppCubit>().logout();
              Navigator.of(context).pushNamedAndRemoveUntil(
                RouteName.login,
                (route) => false,
              );
              print("User logged out");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Assets.icons.logout.svg(),
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
      backgroundColor: context.colors.shoebackground,
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SettingHeader(),
      ),
    );
  }
}
