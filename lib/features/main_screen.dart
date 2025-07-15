import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/home/home_page.dart';
import 'package:smart_home/features/setting/profile_page.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/bottom_navigation/custom_bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with WidgetsBindingObserver {
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
        inActiveColor: context.colors.unHighlightTab,
        activeColor: context.colors.highlightTab,
        backgroundColor: context.colors.primaryBackground,
        iconSize: 30,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.colors.divider,
              blurRadius: 5,
            )
          ],
        ),
        items: [
          BottomNavigationItem(
            icon: Assets.icons.home.path,
            page:const HomePage(),
          ),
          BottomNavigationItem(
            icon: Assets.icons.device.path,
            page: const Placeholder(),
          ),
          BottomNavigationItem(
            icon: Assets.icons.profile.path,
            page: const ProfilePage(),
          ),
        ],
      ),
    );
  }
}
