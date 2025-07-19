import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: 'profile',),
    body: Center(
      child: AppButton(label: 'Logout', onPressed: () {
        context.read<AppCubit>().logout();
      },),
    ),
    );
  }
}