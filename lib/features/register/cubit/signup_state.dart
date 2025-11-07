import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoe_store/models/app_error.dart';
part 'signup_state.freezed.dart';
@freezed

class SignupState with _$SignupState{
  factory SignupState({
       @Default('') String? email,
    @Default('') String? password,
    @Default('') String? userName,
    @Default('') String? rePass,
    @Default(false) bool isLoading,
    @Default(false) bool isSignupSuccess,
    AppError? error,

    
  }) = _SignupState;
SignupState._();

  Map<String,dynamic> toRegisterParams(){
    return
    {
      'username': userName,
      'email': email,
      'password': password,
      // 'full_name': fullName,
      
    };
  }
  bool get isValid =>
      (email?.isNotEmpty ?? false) &&
      (password?.isNotEmpty ?? false) &&
      (userName?.isNotEmpty ?? false);
}