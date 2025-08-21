// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_module_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddModuleState {
  String? get ownerId => throw _privateConstructorUsedError;
  bool get isGettingInfo => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  ShortDeviceInfo? get deviceInfo => throw _privateConstructorUsedError;
  List<WiFiInfo> get nearbyWifi => throw _privateConstructorUsedError;
  bool get isConnecting => throw _privateConstructorUsedError;
  bool get gettingInfoFailed => throw _privateConstructorUsedError;
  Module? get addedModule => throw _privateConstructorUsedError;
  bool get isConnectFailed => throw _privateConstructorUsedError;

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddModuleStateCopyWith<AddModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModuleStateCopyWith<$Res> {
  factory $AddModuleStateCopyWith(
          AddModuleState value, $Res Function(AddModuleState) then) =
      _$AddModuleStateCopyWithImpl<$Res, AddModuleState>;
  @useResult
  $Res call(
      {String? ownerId,
      bool isGettingInfo,
      bool isRefreshing,
      ShortDeviceInfo? deviceInfo,
      List<WiFiInfo> nearbyWifi,
      bool isConnecting,
      bool gettingInfoFailed,
      Module? addedModule,
      bool isConnectFailed});

  $ShortDeviceInfoCopyWith<$Res>? get deviceInfo;
  $ModuleCopyWith<$Res>? get addedModule;
}

/// @nodoc
class _$AddModuleStateCopyWithImpl<$Res, $Val extends AddModuleState>
    implements $AddModuleStateCopyWith<$Res> {
  _$AddModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? isGettingInfo = null,
    Object? isRefreshing = null,
    Object? deviceInfo = freezed,
    Object? nearbyWifi = null,
    Object? isConnecting = null,
    Object? gettingInfoFailed = null,
    Object? addedModule = freezed,
    Object? isConnectFailed = null,
  }) {
    return _then(_value.copyWith(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isGettingInfo: null == isGettingInfo
          ? _value.isGettingInfo
          : isGettingInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ShortDeviceInfo?,
      nearbyWifi: null == nearbyWifi
          ? _value.nearbyWifi
          : nearbyWifi // ignore: cast_nullable_to_non_nullable
              as List<WiFiInfo>,
      isConnecting: null == isConnecting
          ? _value.isConnecting
          : isConnecting // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingInfoFailed: null == gettingInfoFailed
          ? _value.gettingInfoFailed
          : gettingInfoFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      addedModule: freezed == addedModule
          ? _value.addedModule
          : addedModule // ignore: cast_nullable_to_non_nullable
              as Module?,
      isConnectFailed: null == isConnectFailed
          ? _value.isConnectFailed
          : isConnectFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortDeviceInfoCopyWith<$Res>? get deviceInfo {
    if (_value.deviceInfo == null) {
      return null;
    }

    return $ShortDeviceInfoCopyWith<$Res>(_value.deviceInfo!, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res>? get addedModule {
    if (_value.addedModule == null) {
      return null;
    }

    return $ModuleCopyWith<$Res>(_value.addedModule!, (value) {
      return _then(_value.copyWith(addedModule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddModuleStateImplCopyWith<$Res>
    implements $AddModuleStateCopyWith<$Res> {
  factory _$$AddModuleStateImplCopyWith(_$AddModuleStateImpl value,
          $Res Function(_$AddModuleStateImpl) then) =
      __$$AddModuleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ownerId,
      bool isGettingInfo,
      bool isRefreshing,
      ShortDeviceInfo? deviceInfo,
      List<WiFiInfo> nearbyWifi,
      bool isConnecting,
      bool gettingInfoFailed,
      Module? addedModule,
      bool isConnectFailed});

  @override
  $ShortDeviceInfoCopyWith<$Res>? get deviceInfo;
  @override
  $ModuleCopyWith<$Res>? get addedModule;
}

/// @nodoc
class __$$AddModuleStateImplCopyWithImpl<$Res>
    extends _$AddModuleStateCopyWithImpl<$Res, _$AddModuleStateImpl>
    implements _$$AddModuleStateImplCopyWith<$Res> {
  __$$AddModuleStateImplCopyWithImpl(
      _$AddModuleStateImpl _value, $Res Function(_$AddModuleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? isGettingInfo = null,
    Object? isRefreshing = null,
    Object? deviceInfo = freezed,
    Object? nearbyWifi = null,
    Object? isConnecting = null,
    Object? gettingInfoFailed = null,
    Object? addedModule = freezed,
    Object? isConnectFailed = null,
  }) {
    return _then(_$AddModuleStateImpl(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      isGettingInfo: null == isGettingInfo
          ? _value.isGettingInfo
          : isGettingInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ShortDeviceInfo?,
      nearbyWifi: null == nearbyWifi
          ? _value._nearbyWifi
          : nearbyWifi // ignore: cast_nullable_to_non_nullable
              as List<WiFiInfo>,
      isConnecting: null == isConnecting
          ? _value.isConnecting
          : isConnecting // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingInfoFailed: null == gettingInfoFailed
          ? _value.gettingInfoFailed
          : gettingInfoFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      addedModule: freezed == addedModule
          ? _value.addedModule
          : addedModule // ignore: cast_nullable_to_non_nullable
              as Module?,
      isConnectFailed: null == isConnectFailed
          ? _value.isConnectFailed
          : isConnectFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddModuleStateImpl extends _AddModuleState {
  _$AddModuleStateImpl(
      {this.ownerId,
      this.isGettingInfo = true,
      this.isRefreshing = false,
      this.deviceInfo,
      final List<WiFiInfo> nearbyWifi = const [],
      this.isConnecting = false,
      this.gettingInfoFailed = false,
      this.addedModule,
      this.isConnectFailed = false})
      : _nearbyWifi = nearbyWifi,
        super._();

  @override
  final String? ownerId;
  @override
  @JsonKey()
  final bool isGettingInfo;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  final ShortDeviceInfo? deviceInfo;
  final List<WiFiInfo> _nearbyWifi;
  @override
  @JsonKey()
  List<WiFiInfo> get nearbyWifi {
    if (_nearbyWifi is EqualUnmodifiableListView) return _nearbyWifi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyWifi);
  }

  @override
  @JsonKey()
  final bool isConnecting;
  @override
  @JsonKey()
  final bool gettingInfoFailed;
  @override
  final Module? addedModule;
  @override
  @JsonKey()
  final bool isConnectFailed;

  @override
  String toString() {
    return 'AddModuleState(ownerId: $ownerId, isGettingInfo: $isGettingInfo, isRefreshing: $isRefreshing, deviceInfo: $deviceInfo, nearbyWifi: $nearbyWifi, isConnecting: $isConnecting, gettingInfoFailed: $gettingInfoFailed, addedModule: $addedModule, isConnectFailed: $isConnectFailed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddModuleStateImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.isGettingInfo, isGettingInfo) ||
                other.isGettingInfo == isGettingInfo) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            const DeepCollectionEquality()
                .equals(other._nearbyWifi, _nearbyWifi) &&
            (identical(other.isConnecting, isConnecting) ||
                other.isConnecting == isConnecting) &&
            (identical(other.gettingInfoFailed, gettingInfoFailed) ||
                other.gettingInfoFailed == gettingInfoFailed) &&
            (identical(other.addedModule, addedModule) ||
                other.addedModule == addedModule) &&
            (identical(other.isConnectFailed, isConnectFailed) ||
                other.isConnectFailed == isConnectFailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerId,
      isGettingInfo,
      isRefreshing,
      deviceInfo,
      const DeepCollectionEquality().hash(_nearbyWifi),
      isConnecting,
      gettingInfoFailed,
      addedModule,
      isConnectFailed);

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddModuleStateImplCopyWith<_$AddModuleStateImpl> get copyWith =>
      __$$AddModuleStateImplCopyWithImpl<_$AddModuleStateImpl>(
          this, _$identity);
}

abstract class _AddModuleState extends AddModuleState {
  factory _AddModuleState(
      {final String? ownerId,
      final bool isGettingInfo,
      final bool isRefreshing,
      final ShortDeviceInfo? deviceInfo,
      final List<WiFiInfo> nearbyWifi,
      final bool isConnecting,
      final bool gettingInfoFailed,
      final Module? addedModule,
      final bool isConnectFailed}) = _$AddModuleStateImpl;
  _AddModuleState._() : super._();

  @override
  String? get ownerId;
  @override
  bool get isGettingInfo;
  @override
  bool get isRefreshing;
  @override
  ShortDeviceInfo? get deviceInfo;
  @override
  List<WiFiInfo> get nearbyWifi;
  @override
  bool get isConnecting;
  @override
  bool get gettingInfoFailed;
  @override
  Module? get addedModule;
  @override
  bool get isConnectFailed;

  /// Create a copy of AddModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddModuleStateImplCopyWith<_$AddModuleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
