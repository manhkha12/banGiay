import 'package:flutter/material.dart';
import 'package:shoe_store/features/login/component/login_footer.dart';
import 'package:shoe_store/features/login/component/login_form.dart';
import 'package:shoe_store/features/login/component/login_header.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.shoebackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [LoginHeader(), LoginForm(), LoginFooter()],
          ),
        ),
      ),
    );
  }
}