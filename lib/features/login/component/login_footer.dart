import 'package:flutter/material.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/routes.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';


class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InkWell(
          child: AppText(
            'signup.title'.tr(),
            style: TextStyle(fontSize: 17),
          ),
          onTap: () {
            Navigator.pushNamed(context, RouteName.register);
          },
        )
      ],
    );
  }
}
