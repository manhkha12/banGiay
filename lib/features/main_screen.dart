import 'package:flutter/material.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Main Screen',
      ),
      body: Center(
        child: AppText(
          'Welcome to the Main Screen!',
          
        ),
      ),
    );
  }
}