import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError {
  factory AppError.data(String message, {String? code}) = _AppErrorData;
  factory AppError.none() = _AppErrorNone;
}