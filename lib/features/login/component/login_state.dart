import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/app_error.dart';
part 'login_state.freezed.dart';
@freezed

class LoginState with _$LoginState{
  factory LoginState({
    @Default(false) bool isLoginning,
    @Default(false) bool isLoginSuccess,
    String? email,
    String? password,
    AppError? error,
  }) = _LoginState;
  
  LoginState._();

  Map<String, dynamic> toLoginParams() {
    return {
      'email': email,
      'password': password,
    };
  }

  bool get isValid =>
      (email?.isNotEmpty ?? false) && (password?.isNotEmpty ?? false);
}