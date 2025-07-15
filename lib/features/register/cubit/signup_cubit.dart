import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/register/cubit/signup_state.dart';
import 'package:smart_home/models/app_error.dart';
import 'package:smart_home/repository/auth_repository.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository authRepository;
  SignupCubit({
    required this.authRepository,
  }) : super(SignupState());


  void setEmail(String email){
    emit(state.copyWith(email: email));
  }
  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }
  void setConfirmPassword(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
  }
  void setFullName(String fullName) {
    emit(state.copyWith(fullName: fullName));
  }
  void setUsername(String username) {
    emit(state.copyWith(username: username));
  }

  Future<void> register() async {
    try {
      emit(state.copyWith(isLoading: true));
      final params = state.toRegisterParams();
      print("xxxxxx${params}");
      await authRepository.register(params);
      emit(state.copyWith(isLoading: false, isSignupSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false,error: AppError.data(e.toString())));
    }
  }
}
