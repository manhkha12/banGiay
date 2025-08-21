import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/features/intro/component/intro.dart';
import 'package:smart_home/features/localization/localizations.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/theme/styles.dart';

import 'package:smart_home/shared/widgets/app_layout.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  final _intro = [
    Intro.first(),
    Intro.second(),
    Intro.third(),
  ];
  int pageIndex = 0;

  void _toLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('is_first_launch', false);
    Navigator.of(context).pushNamedAndRemoveUntil(
      RouteName.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        child: Stack(
      children: [
        PageView.builder(
          controller: _controller,
          itemBuilder: (context, index) {
            final data = _intro[index];

            if (index == _intro.length - 1) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.smartHomeBackground.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }

            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  AppText(
                    data.title.tr(),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: context.colors.primaryColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Lottie.asset(
                    data.animationPath,
                    fit: BoxFit.contain,
                    height: context.height / 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppText(data.description.tr(),
                      textAlign: TextAlign.center,
                      fontSize: 16,
                      color: context.colors.primaryColor),
                ],
              ),
            );
          },
          itemCount: _intro.length,
          onPageChanged: (value) {
            setState(() {
              pageIndex = value;
            });
          },
        ),
        Positioned(
          right: 8,
          child: SafeArea(
            child: InkWell(
              onTap: _toLogin,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: AppText(
                  'intro.btn_skip'.tr(),
                  fontSize: 16,
                  textDecoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 24,
          right: 24,
          bottom: 30,
          child: SafeArea(
              child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 10,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == pageIndex
                                ? context.colors.primaryColor
                                : context.colors.divider,
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 5),
                      itemCount: _intro.length),
                ),
              ),
              if (pageIndex == _intro.length - 1)
                AppButton(
                  label: 'intro.btn_start'.tr(),
                  isExpaned: false,
                  width: 120,
                  onPressed: _toLogin,
                )
              else
                InkResponse(
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.linear,
                    );
                  },
                  child: Container(
                    width: AppSize.buttonHeight,
                    height: AppSize.buttonHeight,
                    decoration: BoxDecoration(
                      color: context.colors.primaryButton,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Assets.icons.iconBack.svg(width: 16)),
                  ),
                )
            ],
          )),
        )
      ],
    ));
  }
}
