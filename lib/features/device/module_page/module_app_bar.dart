import 'package:flutter/material.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_text.dart';

class ModuleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color titleColor;
  final double titleFontSize;
  final FontWeight titleFontWeight;
  final Color backgroundColor;

  const ModuleAppBar({
    super.key,
    this.title,
    this.titleColor = const Color(0xff373737),
    this.titleFontSize = 18,
    this.titleFontWeight = FontWeight.w500,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      shadowColor: Colors.grey.withOpacity(0.2),
      centerTitle: false,
      surfaceTintColor: Colors.white,
      title: title != null
          ? AppText(
              title ?? '',
              color: titleColor,
              fontSize: titleFontSize,
              fontWeight: titleFontWeight,
            )
          : null,
      actions: [
        GestureDetector(
          child: Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.colors.primaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            // child: Assets.icons.notification.svg(
            //   color: context.colors.primaryButton,
            //   width: 20,
            //   height: 20,
            // ),
          ),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.of(context).pushNamed(RouteName.addModule);
          },
          child: Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.colors.primaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Assets.icons.plus.svg(
              color: context.colors.primaryButton,
              width: 18,
              height: 18,
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
