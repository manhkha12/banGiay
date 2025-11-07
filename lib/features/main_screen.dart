import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/caterogy/caterogy_page_screen.dart';
import 'package:shoe_store/features/home_page/home_page_screen.dart';
import 'package:shoe_store/features/order/component/order_detail.dart';
import 'package:shoe_store/features/setting/setting_page_screen.dart';
import 'package:shoe_store/gen/assets.gen.dart';
import 'package:shoe_store/routes.dart';
import 'package:shoe_store/shared/cubits/app_cubit/app_cubit.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/bottom_navigation/custom_bottom_navigation.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _bottomNavKey = GlobalKey<BottomNavigationState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
        listener: (_, state) {
          state.whenOrNull(
            unAuthorized: () => Navigator.of(context).pushNamedAndRemoveUntil(
              RouteName.login,
              (_) => false,
            ),
          );
        },
        child: BottomNavigation(
          key: _bottomNavKey,
          initIndex: 1,
          inActiveColor: context.colors.black,
          iconSize: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ],
          ),
          items: [
            BottomNavigationItem(
              icon: Assets.icons.home.path,
              page: const HomePageScreen(),
            ),
            BottomNavigationItem(
              icon: Assets.icons.shoppingCart.path,
              page: const OrderDetail(),
            ),
            BottomNavigationItem(
              icon: Assets.icons.cancel.path,
              page: const CaterogyScreen(),
            ),
            BottomNavigationItem(
              icon: Assets.icons.settings.path,
              page: const SettingScreen(),
            ),
          ],
          activeColor: context.colors.black,
        ));
  }
}
