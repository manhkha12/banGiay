import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/home/cubit/home_page_state.dart';
import 'package:smart_home/repository/module_repository.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final ModuleRespository moduleRespository;
  HomePageCubit({
    required this.moduleRespository,
  }) : super(HomePageState());

  void loadWeatherForecast() async {
    emit(state.copyWith(isLoading: true));
    try {
      final weatherData = await moduleRespository.getWeatherForecast();
      emit(state.copyWith(isLoading: false, weatherForecast: weatherData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, isError: true));
    }
  }
}
