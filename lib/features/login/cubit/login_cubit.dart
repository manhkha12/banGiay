import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store/features/login/cubit/login_state.dart';
import 'package:shoe_store/models/app_error.dart';
import 'package:shoe_store/repository/auth_repository.dart';
import 'package:shoe_store/shared/cubits/app_cubit/app_cubit.dart';


class LoginCubit extends Cubit<LoginState> {
  final AuthRepository authRepository;
  final AppCubit appCubit;
  LoginCubit({
    required this.authRepository,
    required this.appCubit,
  }) : super(LoginState());
  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> login() async {
    emit(state.copyWith(isLoginning: true));
    try {
      final params = state.toLoginParams();
      final user = await authRepository.login(params);
      appCubit.authorized(user);
      emit(
        state.copyWith(
          isLoginning: false,
          isLoginSuccess: true,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
          isLoginning: false, error: AppError.data(e.toString())));
    } finally {
      emit(state.copyWith(error: AppError.none()));
    }
  }
}
