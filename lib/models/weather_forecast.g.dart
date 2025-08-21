// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastImpl _$$WeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastImpl(
      city: json['city'] as String,
      temperature: (json['temp'] as num).toDouble(),
      feelLike: (json['feels_like'] as num).toDouble(),
      weather: json['weather'] as String,
      icon: json['icon'] as String,
      humidity: (json['humidity'] as num).toInt(),
      windSpeed: json['wind'] as String,
      cloudiness: (json['cloudiness'] as num).toInt(),
      precipitation: (json['precipitation'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeatherForecastImplToJson(
        _$WeatherForecastImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'temp': instance.temperature,
      'feels_like': instance.feelLike,
      'weather': instance.weather,
      'icon': instance.icon,
      'humidity': instance.humidity,
      'wind': instance.windSpeed,
      'cloudiness': instance.cloudiness,
      'precipitation': instance.precipitation,
    };
