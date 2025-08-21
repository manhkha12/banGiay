// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelLike => throw _privateConstructorUsedError;
  String get weather => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  String get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloudiness')
  int get cloudiness => throw _privateConstructorUsedError;
  double get precipitation => throw _privateConstructorUsedError;

  /// Serializes this WeatherForecast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call(
      {String city,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'feels_like') double feelLike,
      String weather,
      String icon,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'wind') String windSpeed,
      @JsonKey(name: 'cloudiness') int cloudiness,
      double precipitation});
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? temperature = null,
    Object? feelLike = null,
    Object? weather = null,
    Object? icon = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? cloudiness = null,
    Object? precipitation = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelLike: null == feelLike
          ? _value.feelLike
          : feelLike // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      cloudiness: null == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastImplCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$WeatherForecastImplCopyWith(_$WeatherForecastImpl value,
          $Res Function(_$WeatherForecastImpl) then) =
      __$$WeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String city,
      @JsonKey(name: 'temp') double temperature,
      @JsonKey(name: 'feels_like') double feelLike,
      String weather,
      String icon,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'wind') String windSpeed,
      @JsonKey(name: 'cloudiness') int cloudiness,
      double precipitation});
}

/// @nodoc
class __$$WeatherForecastImplCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$WeatherForecastImpl>
    implements _$$WeatherForecastImplCopyWith<$Res> {
  __$$WeatherForecastImplCopyWithImpl(
      _$WeatherForecastImpl _value, $Res Function(_$WeatherForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherForecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? temperature = null,
    Object? feelLike = null,
    Object? weather = null,
    Object? icon = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? cloudiness = null,
    Object? precipitation = null,
  }) {
    return _then(_$WeatherForecastImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      feelLike: null == feelLike
          ? _value.feelLike
          : feelLike // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      cloudiness: null == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastImpl implements _WeatherForecast {
  _$WeatherForecastImpl(
      {required this.city,
      @JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'feels_like') required this.feelLike,
      required this.weather,
      required this.icon,
      @JsonKey(name: 'humidity') required this.humidity,
      @JsonKey(name: 'wind') required this.windSpeed,
      @JsonKey(name: 'cloudiness') required this.cloudiness,
      required this.precipitation});

  factory _$WeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastImplFromJson(json);

  @override
  final String city;
  @override
  @JsonKey(name: 'temp')
  final double temperature;
  @override
  @JsonKey(name: 'feels_like')
  final double feelLike;
  @override
  final String weather;
  @override
  final String icon;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;
  @override
  @JsonKey(name: 'wind')
  final String windSpeed;
  @override
  @JsonKey(name: 'cloudiness')
  final int cloudiness;
  @override
  final double precipitation;

  @override
  String toString() {
    return 'WeatherForecast(city: $city, temperature: $temperature, feelLike: $feelLike, weather: $weather, icon: $icon, humidity: $humidity, windSpeed: $windSpeed, cloudiness: $cloudiness, precipitation: $precipitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.feelLike, feelLike) ||
                other.feelLike == feelLike) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.cloudiness, cloudiness) ||
                other.cloudiness == cloudiness) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, city, temperature, feelLike,
      weather, icon, humidity, windSpeed, cloudiness, precipitation);

  /// Create a copy of WeatherForecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      __$$WeatherForecastImplCopyWithImpl<_$WeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  factory _WeatherForecast(
      {required final String city,
      @JsonKey(name: 'temp') required final double temperature,
      @JsonKey(name: 'feels_like') required final double feelLike,
      required final String weather,
      required final String icon,
      @JsonKey(name: 'humidity') required final int humidity,
      @JsonKey(name: 'wind') required final String windSpeed,
      @JsonKey(name: 'cloudiness') required final int cloudiness,
      required final double precipitation}) = _$WeatherForecastImpl;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastImpl.fromJson;

  @override
  String get city;
  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  @JsonKey(name: 'feels_like')
  double get feelLike;
  @override
  String get weather;
  @override
  String get icon;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(name: 'wind')
  String get windSpeed;
  @override
  @JsonKey(name: 'cloudiness')
  int get cloudiness;
  @override
  double get precipitation;

  /// Create a copy of WeatherForecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
