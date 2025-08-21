import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/widgets/app_text.dart';

class ConnectingModal extends StatelessWidget {
  const ConnectingModal({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Dialog(
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LottieBuilder.asset(
                Assets.images.configurating,
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16),
              const AppText(
                'Đang thiết lập...',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              const AppText(
                'Quá trình này có thể mất 1-2 phút. Vui lòng chờ và giữ nguyên màn hình này cho đến khi quá trình thiết lập hoàn tất.',
                fontSize: 16,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
