import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/register/cubit/signup_state.dart';
import 'package:shoe_store/repository/auth_repository.dart';


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
    emit(state.copyWith(rePass: confirmPassword));
  }
  // void setFullName(String fullName) {
  //   emit(state.copyWith(: fullName));
  // }
  void setUsername(String username) {
    emit(state.copyWith(userName: username));
  }


  Future<void> register() async {
    try {
      emit(state.copyWith(isLoading: true));
      final params = state.toRegisterParams();
      await authRepository.register(params);
      emit(state.copyWith(isLoading: false, isSignupSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
