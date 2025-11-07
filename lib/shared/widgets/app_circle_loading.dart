import 'package:flutter/material.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';



class AppCircleLoading extends StatelessWidget {
  final double strokeWidth;
  const AppCircleLoading({
    super.key,
    this.strokeWidth = 3,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth,
      color: context.colors.primaryButton,
    );
  }
}
