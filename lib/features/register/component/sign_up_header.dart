import 'package:flutter/material.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/gen/assets.gen.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: context.colors.disabledInputBorder,
              borderRadius: BorderRadius.circular(10)),
          child: Center(child: Assets.icons.cancel.svg()),
        ),
        SizedBox(
          height: 25,
        ),
        AppText(
          'signup.title'.tr(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        AppText(
          'signup.signup_note'.tr(),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
