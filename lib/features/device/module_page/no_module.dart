import 'package:flutter/material.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';


class NoModules extends StatelessWidget {
  const NoModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           AppText(
            'module.no_device'.tr(),
            textAlign: TextAlign.center,
            fontSize: 15,
          ),
          const SizedBox(height: 40),
          AppButton(
            label: 'module.add_device'.tr(),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteName.addModule);
            },
          ),
        ],
      ),
    );
  }
}
