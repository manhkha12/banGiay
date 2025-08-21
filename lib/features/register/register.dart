import 'package:flutter/material.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/features/register/register_form.dart';

import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: context.colors.white,
        title: 'register.title'.tr(),
        titleFontWeight: FontWeight.normal,
        titleColor: context.colors.black,
      ),
      body: const SingleChildScrollView(child: SignupForm()),
    );
  }
}
