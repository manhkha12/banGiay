import 'package:flutter/material.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_form_field.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';


class WifiCredentialModal extends StatefulWidget {
  final String? ssid;
  const WifiCredentialModal({super.key, this.ssid});

  @override
  State<WifiCredentialModal> createState() => _WifiCredentialModalState();
}

class _WifiCredentialModalState extends State<WifiCredentialModal> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final ValueNotifier<bool> _passwordVisibleNotifier = ValueNotifier(false);

  String? _ssid;
  String? _password;

  @override
  void initState() {
    super.initState();
    _ssid = widget.ssid;
  }

  void _connect() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.of(context).pop(
        {
          'ssid': _ssid,
          'pass': _password,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppText(
                  widget.ssid ?? 'Thêm mạng',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (widget.ssid == null) ...[
                AppTextFormField(
                  hintText: 'Nhập tên WiFi',
                  onChanged: (value) {
                    setState(() {
                      _ssid = value;
                    });
                  },
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Vui lòng nhập tên WiFi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10)
              ],
              ValueListenableBuilder<bool>(
                  valueListenable: _passwordVisibleNotifier,
                  builder: (context, isOn, _) {
                    return AppTextFormField(
                      hintText: 'Nhập mật khẩu',
                      obscured: !isOn,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Vui lòng nhập mật khẩu';
                        }
                        return null;
                      },
                      suffixIcon: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          _passwordVisibleNotifier.value = !isOn;
                        },
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 34, maxHeight: 34),
                          child: Center(
                            child: (!isOn ? Assets.icons.eyeOff : Assets.icons.eyeOn).svg(
                              width: 18,
                              color: context.colors.placeholderColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 20),
              AppButton(
                label: 'Kết nối',
                onPressed: ((_ssid?.isNotEmpty ?? false) && (_password?.isNotEmpty ?? false))
                    ? _connect
                    : null,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              )
            ],
          ),
        ),
      ),
    );
  }
}
