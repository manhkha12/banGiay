import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  factory WeatherForecast(
      {required String city,
      @JsonKey(name: 'temp') required double temperature,
      @JsonKey(name: 'feels_like') required double feelLike,
      required String weather,
      required String icon,
      @JsonKey(name: 'humidity') required int humidity,
      @JsonKey(name: 'wind') required String windSpeed,
      @JsonKey(name: 'cloudiness') required int cloudiness,
      required double precipitation}) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}
