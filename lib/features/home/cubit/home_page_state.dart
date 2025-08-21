import 'package:smart_home/models/weather_forecast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
     WeatherForecast? weatherForecast,
  }) = _HomePageState;
}
