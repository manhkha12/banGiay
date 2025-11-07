import 'package:flutter/material.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/features/register/component/sign_up_header.dart';
import 'package:shoe_store/features/register/component/signup_footer.dart';
import 'package:shoe_store/features/register/component/signup_form.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.shoebackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              SignUpHeader(),
              SignUpForm(),
              SignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}