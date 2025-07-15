
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:toastification/toastification.dart';

void showSuccessToast(
  String message, {
  String? description,
  Duration duration = const Duration(seconds: 3),
}) {
  toastification.show(
    title: AppText(message),
    type: ToastificationType.success,
    autoCloseDuration: duration,
    showProgressBar: false,
    style: ToastificationStyle.minimal,
    description:
        description != null ? AppText(description, fontSize: 12) : null,
  );
}

void showErrorToast(
  String message, {
  String? description,
  Duration duration = const Duration(seconds: 3),
}) {
  toastification.show(
    title: AppText(message),
    type: ToastificationType.error,
    autoCloseDuration: duration,
    showProgressBar: false,
    style: ToastificationStyle.minimal,
    description:
        description != null ? AppText(description, fontSize: 12) : null,
  );
}

void showWarningToast(
  String message, {
  String? description,
  Duration duration = const Duration(seconds: 3),
}) {
  toastification.show(
    title: AppText(message),
    type: ToastificationType.warning,
    autoCloseDuration: duration,
    showProgressBar: false,
    style: ToastificationStyle.minimal,
    description:
        description != null ? AppText(description, fontSize: 12) : null,
  );
}

void showInfoToast(
  String message, {
  String? description,
  Duration duration = const Duration(seconds: 3),
}) {
  toastification.show(
    title: AppText(message),
    type: ToastificationType.info,
    autoCloseDuration: duration,
    showProgressBar: false,
    style: ToastificationStyle.minimal,
    description:
        description != null ? AppText(description, fontSize: 12) : null,
  );
}
