import 'package:flutter/material.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/widgets/app_check_box.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';


class GuideToConnect extends StatefulWidget {
  final VoidCallback onNext;
  const GuideToConnect({
    super.key,
    required this.onNext,
  });

  @override
  State<GuideToConnect> createState() => _GuideToConnectState();
}

class _GuideToConnectState extends State<GuideToConnect> {
  bool _isReady = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: AppText(
                  'Cấp nguồn cho thiết bị',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Center(
                  // child: Assets.icons.connectPower.svg(width: 100, height: 100),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: AppText(
                  'Khi đèn LED trên thiết bị nhấp nháy, thiết bị sẽ phát ra WiFi có tên KGXXXXXX',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Center(
                  // child: Assets.icons.deviceReady.svg(width: 100, height: 100),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: AppText(
                  'Kết nối điện thoại với WiFi KGXXXXXX của thiết bị',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Center(
                  // child: Assets.icons.phoneConnect.svg(width: 100, height: 100),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          const AppText(
            'Lưu ý: Tắt 4G/5G trước khi kết nối với WiFi. Nếu đèn LED trên thiết bị không nhấp nháy, ấn giữ nút reset trên thiết bị trong vòng 3 giây',
            fontStyle: FontStyle.italic,
          ),
          const Spacer(),
          AppCheckbox(
            value: _isReady,
            label: 'Tôi đã thực hiện đúng các bước trên',
            onChanged: (value) {
              setState(() {
                _isReady = value!;
              });
            },
          ),
          const SizedBox(height: 16),
          AppButton(
            label: 'Tiếp tục',
            onPressed: _isReady
                ? () {
                    widget.onNext();
                    setState(() {
                      _isReady = false;
                    });
                  }
                : null,
          )
        ],
      ),
    );
  }
}
