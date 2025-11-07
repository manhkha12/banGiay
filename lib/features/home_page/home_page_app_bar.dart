import 'package:flutter/material.dart';
import 'package:shoe_store/features/localization/translate_extension.dart';
import 'package:shoe_store/gen/assets.gen.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';
import 'package:shoe_store/shared/widgets/app_text_form_field.dart';

class HomePageAppBar extends StatefulWidget {
  const HomePageAppBar({super.key});

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 63,
        child: Stack(children: [
          Positioned(
            top: -10,
            bottom: 10,
            left: 0,
            child: SizedBox(
                width: 38, height: 38, child: Assets.images.user.image()),
          ),
          Positioned(
              top: 5,
              left: 55,
              child: InkWell(
                child: Assets.icons.menu.svg(height: 35),
                onTap: () {},
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: context.width * 0.14,
              ),
              SizedBox(
                width: context.width * 0.5 + 15,
                child: AppTextFormField(
                  enableBorder: false,
                  hintText: 'home.search'.tr(),
                  hintTextStyle: TextStyle(fontSize: 17),
                  fillColor: context.colors.shoebackground,
                  controller: _searchController,
                  prefixIcon: Assets.icons.search
                      .svg(color: context.colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Positioned(
              left: context.width * 0.8 + 20,
              top: 8,
              child: _CartNotification())
        ]),
      ),
    );
  }
}

class _CartNotification extends StatelessWidget {
  const _CartNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Assets.icons.shoppingCart.svg(height: 25),
        Positioned(
          top: 1,
          left: 16,
          right: -4,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.textError,
            ),
          ),
        )
      ],
    );
  }
}
