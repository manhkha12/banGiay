// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
mixin _$Module {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mcu_type')
  String get mcuType => throw _privateConstructorUsedError;
  @JsonKey(name: 'chip_id')
  String get chipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_version')
  String get productVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'firmware_version')
  String get firmwareVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_id')
  String? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  List<String>? get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<Node> get nodes =>
      throw _privateConstructorUsedError; // @Default([]) List<Sensor> sensors,
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_at')
  @DateTimeOrNullConverter()
  DateTime? get activeAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac_address')
  String get macAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_copyright')
  String? get productCopyright => throw _privateConstructorUsedError;
  ConnectionInfo? get connection => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;

  /// Serializes this Module to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'mcu_type') String mcuType,
      @JsonKey(name: 'chip_id') String chipId,
      @JsonKey(name: 'product_version') String productVersion,
      @JsonKey(name: 'firmware_version') String firmwareVersion,
      @JsonKey(name: 'home_id') String? houseId,
      @JsonKey(name: 'room_id') String? roomId,
      @JsonKey(name: 'users') List<String>? userIds,
      @JsonKey(name: 'owner_id') String? ownerId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      List<Node> nodes,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
      @JsonKey(name: 'active_at') @DateTimeOrNullConverter() DateTime? activeAt,
      @JsonKey(name: 'mac_address') String macAddress,
      @JsonKey(name: 'product_copyright') String? productCopyright,
      ConnectionInfo? connection,
      @JsonKey(name: 'is_online') bool isOnline});

  $ConnectionInfoCopyWith<$Res>? get connection;
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mcuType = null,
    Object? chipId = null,
    Object? productVersion = null,
    Object? firmwareVersion = null,
    Object? houseId = freezed,
    Object? roomId = freezed,
    Object? userIds = freezed,
    Object? ownerId = freezed,
    Object? createdAt = freezed,
    Object? nodes = null,
    Object? updatedAt = freezed,
    Object? activeAt = freezed,
    Object? macAddress = null,
    Object? productCopyright = freezed,
    Object? connection = freezed,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mcuType: null == mcuType
          ? _value.mcuType
          : mcuType // ignore: cast_nullable_to_non_nullable
              as String,
      chipId: null == chipId
          ? _value.chipId
          : chipId // ignore: cast_nullable_to_non_nullable
              as String,
      productVersion: null == productVersion
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String,
      firmwareVersion: null == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      userIds: freezed == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      productCopyright: freezed == productCopyright
          ? _value.productCopyright
          : productCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionInfo?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectionInfoCopyWith<$Res>? get connection {
    if (_value.connection == null) {
      return null;
    }

    return $ConnectionInfoCopyWith<$Res>(_value.connection!, (value) {
      return _then(_value.copyWith(connection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleImplCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$$ModuleImplCopyWith(
          _$ModuleImpl value, $Res Function(_$ModuleImpl) then) =
      __$$ModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'mcu_type') String mcuType,
      @JsonKey(name: 'chip_id') String chipId,
      @JsonKey(name: 'product_version') String productVersion,
      @JsonKey(name: 'firmware_version') String firmwareVersion,
      @JsonKey(name: 'home_id') String? houseId,
      @JsonKey(name: 'room_id') String? roomId,
      @JsonKey(name: 'users') List<String>? userIds,
      @JsonKey(name: 'owner_id') String? ownerId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      List<Node> nodes,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
      @JsonKey(name: 'active_at') @DateTimeOrNullConverter() DateTime? activeAt,
      @JsonKey(name: 'mac_address') String macAddress,
      @JsonKey(name: 'product_copyright') String? productCopyright,
      ConnectionInfo? connection,
      @JsonKey(name: 'is_online') bool isOnline});

  @override
  $ConnectionInfoCopyWith<$Res>? get connection;
}

/// @nodoc
class __$$ModuleImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$ModuleImpl>
    implements _$$ModuleImplCopyWith<$Res> {
  __$$ModuleImplCopyWithImpl(
      _$ModuleImpl _value, $Res Function(_$ModuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mcuType = null,
    Object? chipId = null,
    Object? productVersion = null,
    Object? firmwareVersion = null,
    Object? houseId = freezed,
    Object? roomId = freezed,
    Object? userIds = freezed,
    Object? ownerId = freezed,
    Object? createdAt = freezed,
    Object? nodes = null,
    Object? updatedAt = freezed,
    Object? activeAt = freezed,
    Object? macAddress = null,
    Object? productCopyright = freezed,
    Object? connection = freezed,
    Object? isOnline = null,
  }) {
    return _then(_$ModuleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mcuType: null == mcuType
          ? _value.mcuType
          : mcuType // ignore: cast_nullable_to_non_nullable
              as String,
      chipId: null == chipId
          ? _value.chipId
          : chipId // ignore: cast_nullable_to_non_nullable
              as String,
      productVersion: null == productVersion
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String,
      firmwareVersion: null == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      userIds: freezed == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      productCopyright: freezed == productCopyright
          ? _value.productCopyright
          : productCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionInfo?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleImpl extends _Module {
  _$ModuleImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'mcu_type') required this.mcuType,
      @JsonKey(name: 'chip_id') required this.chipId,
      @JsonKey(name: 'product_version') required this.productVersion,
      @JsonKey(name: 'firmware_version') required this.firmwareVersion,
      @JsonKey(name: 'home_id') this.houseId,
      @JsonKey(name: 'room_id') this.roomId,
      @JsonKey(name: 'users') final List<String>? userIds,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'created_at') this.createdAt,
      final List<Node> nodes = const [],
      @JsonKey(name: 'updated_at') @DateTimeConverter() this.updatedAt,
      @JsonKey(name: 'active_at') @DateTimeOrNullConverter() this.activeAt,
      @JsonKey(name: 'mac_address') required this.macAddress,
      @JsonKey(name: 'product_copyright') this.productCopyright,
      this.connection,
      @JsonKey(name: 'is_online') required this.isOnline})
      : _userIds = userIds,
        _nodes = nodes,
        super._();

  factory _$ModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'mcu_type')
  final String mcuType;
  @override
  @JsonKey(name: 'chip_id')
  final String chipId;
  @override
  @JsonKey(name: 'product_version')
  final String productVersion;
  @override
  @JsonKey(name: 'firmware_version')
  final String firmwareVersion;
  @override
  @JsonKey(name: 'home_id')
  final String? houseId;
  @override
  @JsonKey(name: 'room_id')
  final String? roomId;
  final List<String>? _userIds;
  @override
  @JsonKey(name: 'users')
  List<String>? get userIds {
    final value = _userIds;
    if (value == null) return null;
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final List<Node> _nodes;
  @override
  @JsonKey()
  List<Node> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

// @Default([]) List<Sensor> sensors,
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'active_at')
  @DateTimeOrNullConverter()
  final DateTime? activeAt;
  @override
  @JsonKey(name: 'mac_address')
  final String macAddress;
  @override
  @JsonKey(name: 'product_copyright')
  final String? productCopyright;
  @override
  final ConnectionInfo? connection;
  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;

  @override
  String toString() {
    return 'Module(id: $id, name: $name, mcuType: $mcuType, chipId: $chipId, productVersion: $productVersion, firmwareVersion: $firmwareVersion, houseId: $houseId, roomId: $roomId, userIds: $userIds, ownerId: $ownerId, createdAt: $createdAt, nodes: $nodes, updatedAt: $updatedAt, activeAt: $activeAt, macAddress: $macAddress, productCopyright: $productCopyright, connection: $connection, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mcuType, mcuType) || other.mcuType == mcuType) &&
            (identical(other.chipId, chipId) || other.chipId == chipId) &&
            (identical(other.productVersion, productVersion) ||
                other.productVersion == productVersion) &&
            (identical(other.firmwareVersion, firmwareVersion) ||
                other.firmwareVersion == firmwareVersion) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.activeAt, activeAt) ||
                other.activeAt == activeAt) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.productCopyright, productCopyright) ||
                other.productCopyright == productCopyright) &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      mcuType,
      chipId,
      productVersion,
      firmwareVersion,
      houseId,
      roomId,
      const DeepCollectionEquality().hash(_userIds),
      ownerId,
      createdAt,
      const DeepCollectionEquality().hash(_nodes),
      updatedAt,
      activeAt,
      macAddress,
      productCopyright,
      connection,
      isOnline);

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      __$$ModuleImplCopyWithImpl<_$ModuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleImplToJson(
      this,
    );
  }
}

abstract class _Module extends Module {
  factory _Module(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      @JsonKey(name: 'mcu_type') required final String mcuType,
      @JsonKey(name: 'chip_id') required final String chipId,
      @JsonKey(name: 'product_version') required final String productVersion,
      @JsonKey(name: 'firmware_version') required final String firmwareVersion,
      @JsonKey(name: 'home_id') final String? houseId,
      @JsonKey(name: 'room_id') final String? roomId,
      @JsonKey(name: 'users') final List<String>? userIds,
      @JsonKey(name: 'owner_id') final String? ownerId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final List<Node> nodes,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      final DateTime? updatedAt,
      @JsonKey(name: 'active_at')
      @DateTimeOrNullConverter()
      final DateTime? activeAt,
      @JsonKey(name: 'mac_address') required final String macAddress,
      @JsonKey(name: 'product_copyright') final String? productCopyright,
      final ConnectionInfo? connection,
      @JsonKey(name: 'is_online') required final bool isOnline}) = _$ModuleImpl;
  _Module._() : super._();

  factory _Module.fromJson(Map<String, dynamic> json) = _$ModuleImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'mcu_type')
  String get mcuType;
  @override
  @JsonKey(name: 'chip_id')
  String get chipId;
  @override
  @JsonKey(name: 'product_version')
  String get productVersion;
  @override
  @JsonKey(name: 'firmware_version')
  String get firmwareVersion;
  @override
  @JsonKey(name: 'home_id')
  String? get houseId;
  @override
  @JsonKey(name: 'room_id')
  String? get roomId;
  @override
  @JsonKey(name: 'users')
  List<String>? get userIds;
  @override
  @JsonKey(name: 'owner_id')
  String? get ownerId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  List<Node> get nodes; // @Default([]) List<Sensor> sensors,
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'active_at')
  @DateTimeOrNullConverter()
  DateTime? get activeAt;
  @override
  @JsonKey(name: 'mac_address')
  String get macAddress;
  @override
  @JsonKey(name: 'product_copyright')
  String? get productCopyright;
  @override
  ConnectionInfo? get connection;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;

  /// Create a copy of Module
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConnectionInfo _$ConnectionInfoFromJson(Map<String, dynamic> json) {
  return _ConnectionInfo.fromJson(json);
}

/// @nodoc
mixin _$ConnectionInfo {
  String? get ssid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_address')
  String? get ipAddress => throw _privateConstructorUsedError;

  /// Serializes this ConnectionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionInfoCopyWith<ConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionInfoCopyWith<$Res> {
  factory $ConnectionInfoCopyWith(
          ConnectionInfo value, $Res Function(ConnectionInfo) then) =
      _$ConnectionInfoCopyWithImpl<$Res, ConnectionInfo>;
  @useResult
  $Res call({String? ssid, @JsonKey(name: 'ip_address') String? ipAddress});
}

/// @nodoc
class _$ConnectionInfoCopyWithImpl<$Res, $Val extends ConnectionInfo>
    implements $ConnectionInfoCopyWith<$Res> {
  _$ConnectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_value.copyWith(
      ssid: freezed == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionInfoImplCopyWith<$Res>
    implements $ConnectionInfoCopyWith<$Res> {
  factory _$$ConnectionInfoImplCopyWith(_$ConnectionInfoImpl value,
          $Res Function(_$ConnectionInfoImpl) then) =
      __$$ConnectionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ssid, @JsonKey(name: 'ip_address') String? ipAddress});
}

/// @nodoc
class __$$ConnectionInfoImplCopyWithImpl<$Res>
    extends _$ConnectionInfoCopyWithImpl<$Res, _$ConnectionInfoImpl>
    implements _$$ConnectionInfoImplCopyWith<$Res> {
  __$$ConnectionInfoImplCopyWithImpl(
      _$ConnectionInfoImpl _value, $Res Function(_$ConnectionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_$ConnectionInfoImpl(
      ssid: freezed == ssid
          ? _value.ssid
          : ssid // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionInfoImpl implements _ConnectionInfo {
  _$ConnectionInfoImpl(
      {this.ssid, @JsonKey(name: 'ip_address') this.ipAddress});

  factory _$ConnectionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectionInfoImplFromJson(json);

  @override
  final String? ssid;
  @override
  @JsonKey(name: 'ip_address')
  final String? ipAddress;

  @override
  String toString() {
    return 'ConnectionInfo(ssid: $ssid, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionInfoImpl &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ssid, ipAddress);

  /// Create a copy of ConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionInfoImplCopyWith<_$ConnectionInfoImpl> get copyWith =>
      __$$ConnectionInfoImplCopyWithImpl<_$ConnectionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionInfoImplToJson(
      this,
    );
  }
}

abstract class _ConnectionInfo implements ConnectionInfo {
  factory _ConnectionInfo(
          {final String? ssid,
          @JsonKey(name: 'ip_address') final String? ipAddress}) =
      _$ConnectionInfoImpl;

  factory _ConnectionInfo.fromJson(Map<String, dynamic> json) =
      _$ConnectionInfoImpl.fromJson;

  @override
  String? get ssid;
  @override
  @JsonKey(name: 'ip_address')
  String? get ipAddress;

  /// Create a copy of ConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionInfoImplCopyWith<_$ConnectionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
