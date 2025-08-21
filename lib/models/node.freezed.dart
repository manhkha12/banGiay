// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Node _$NodeFromJson(Map<String, dynamic> json) {
  return _Node.fromJson(json);
}

/// @nodoc
mixin _$Node {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpio_key')
  int get gpioKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpio_name')
  String get gpioName => throw _privateConstructorUsedError;
  int get state => throw _privateConstructorUsedError;
  List<NodeTimer> get timers => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Node to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Node
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodeCopyWith<Node> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeCopyWith<$Res> {
  factory $NodeCopyWith(Node value, $Res Function(Node) then) =
      _$NodeCopyWithImpl<$Res, Node>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? name,
      @JsonKey(name: 'gpio_key') int gpioKey,
      @JsonKey(name: 'gpio_name') String gpioName,
      int state,
      List<NodeTimer> timers,
      @DateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class _$NodeCopyWithImpl<$Res, $Val extends Node>
    implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Node
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? gpioKey = null,
    Object? gpioName = null,
    Object? state = null,
    Object? timers = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gpioKey: null == gpioKey
          ? _value.gpioKey
          : gpioKey // ignore: cast_nullable_to_non_nullable
              as int,
      gpioName: null == gpioName
          ? _value.gpioName
          : gpioName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      timers: null == timers
          ? _value.timers
          : timers // ignore: cast_nullable_to_non_nullable
              as List<NodeTimer>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeImplCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$$NodeImplCopyWith(
          _$NodeImpl value, $Res Function(_$NodeImpl) then) =
      __$$NodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? name,
      @JsonKey(name: 'gpio_key') int gpioKey,
      @JsonKey(name: 'gpio_name') String gpioName,
      int state,
      List<NodeTimer> timers,
      @DateTimeConverter() DateTime updatedAt});
}

/// @nodoc
class __$$NodeImplCopyWithImpl<$Res>
    extends _$NodeCopyWithImpl<$Res, _$NodeImpl>
    implements _$$NodeImplCopyWith<$Res> {
  __$$NodeImplCopyWithImpl(_$NodeImpl _value, $Res Function(_$NodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Node
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? gpioKey = null,
    Object? gpioName = null,
    Object? state = null,
    Object? timers = null,
    Object? updatedAt = null,
  }) {
    return _then(_$NodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gpioKey: null == gpioKey
          ? _value.gpioKey
          : gpioKey // ignore: cast_nullable_to_non_nullable
              as int,
      gpioName: null == gpioName
          ? _value.gpioName
          : gpioName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      timers: null == timers
          ? _value._timers
          : timers // ignore: cast_nullable_to_non_nullable
              as List<NodeTimer>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeImpl extends _Node {
  _$NodeImpl(
      {@JsonKey(name: '_id') required this.id,
      this.name,
      @JsonKey(name: 'gpio_key') required this.gpioKey,
      @JsonKey(name: 'gpio_name') required this.gpioName,
      required this.state,
      final List<NodeTimer> timers = const [],
      @DateTimeConverter() required this.updatedAt})
      : _timers = timers,
        super._();

  factory _$NodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'gpio_key')
  final int gpioKey;
  @override
  @JsonKey(name: 'gpio_name')
  final String gpioName;
  @override
  final int state;
  final List<NodeTimer> _timers;
  @override
  @JsonKey()
  List<NodeTimer> get timers {
    if (_timers is EqualUnmodifiableListView) return _timers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timers);
  }

  @override
  @DateTimeConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Node(id: $id, name: $name, gpioKey: $gpioKey, gpioName: $gpioName, state: $state, timers: $timers, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gpioKey, gpioKey) || other.gpioKey == gpioKey) &&
            (identical(other.gpioName, gpioName) ||
                other.gpioName == gpioName) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._timers, _timers) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, gpioKey, gpioName,
      state, const DeepCollectionEquality().hash(_timers), updatedAt);

  /// Create a copy of Node
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeImplCopyWith<_$NodeImpl> get copyWith =>
      __$$NodeImplCopyWithImpl<_$NodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeImplToJson(
      this,
    );
  }
}

abstract class _Node extends Node {
  factory _Node(
      {@JsonKey(name: '_id') required final String id,
      final String? name,
      @JsonKey(name: 'gpio_key') required final int gpioKey,
      @JsonKey(name: 'gpio_name') required final String gpioName,
      required final int state,
      final List<NodeTimer> timers,
      @DateTimeConverter() required final DateTime updatedAt}) = _$NodeImpl;
  _Node._() : super._();

  factory _Node.fromJson(Map<String, dynamic> json) = _$NodeImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'gpio_key')
  int get gpioKey;
  @override
  @JsonKey(name: 'gpio_name')
  String get gpioName;
  @override
  int get state;
  @override
  List<NodeTimer> get timers;
  @override
  @DateTimeConverter()
  DateTime get updatedAt;

  /// Create a copy of Node
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeImplCopyWith<_$NodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeTimer _$NodeTimerFromJson(Map<String, dynamic> json) {
  return _NodeTimer.fromJson(json);
}

/// @nodoc
mixin _$NodeTimer {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  int get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  int get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this NodeTimer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NodeTimer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodeTimerCopyWith<NodeTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeTimerCopyWith<$Res> {
  factory $NodeTimerCopyWith(NodeTimer value, $Res Function(NodeTimer) then) =
      _$NodeTimerCopyWithImpl<$Res, NodeTimer>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'start_at') int startAt,
      @JsonKey(name: 'end_at') int endAt,
      @JsonKey(name: 'active') bool isActive});
}

/// @nodoc
class _$NodeTimerCopyWithImpl<$Res, $Val extends NodeTimer>
    implements $NodeTimerCopyWith<$Res> {
  _$NodeTimerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NodeTimer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as int,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeTimerImplCopyWith<$Res>
    implements $NodeTimerCopyWith<$Res> {
  factory _$$NodeTimerImplCopyWith(
          _$NodeTimerImpl value, $Res Function(_$NodeTimerImpl) then) =
      __$$NodeTimerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'start_at') int startAt,
      @JsonKey(name: 'end_at') int endAt,
      @JsonKey(name: 'active') bool isActive});
}

/// @nodoc
class __$$NodeTimerImplCopyWithImpl<$Res>
    extends _$NodeTimerCopyWithImpl<$Res, _$NodeTimerImpl>
    implements _$$NodeTimerImplCopyWith<$Res> {
  __$$NodeTimerImplCopyWithImpl(
      _$NodeTimerImpl _value, $Res Function(_$NodeTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeTimer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isActive = null,
  }) {
    return _then(_$NodeTimerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as int,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeTimerImpl extends _NodeTimer {
  _$NodeTimerImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'end_at') required this.endAt,
      @JsonKey(name: 'active') this.isActive = true})
      : super._();

  factory _$NodeTimerImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeTimerImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'start_at')
  final int startAt;
  @override
  @JsonKey(name: 'end_at')
  final int endAt;
  @override
  @JsonKey(name: 'active')
  final bool isActive;

  @override
  String toString() {
    return 'NodeTimer(id: $id, startAt: $startAt, endAt: $endAt, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeTimerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startAt, endAt, isActive);

  /// Create a copy of NodeTimer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeTimerImplCopyWith<_$NodeTimerImpl> get copyWith =>
      __$$NodeTimerImplCopyWithImpl<_$NodeTimerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeTimerImplToJson(
      this,
    );
  }
}

abstract class _NodeTimer extends NodeTimer {
  factory _NodeTimer(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'start_at') required final int startAt,
      @JsonKey(name: 'end_at') required final int endAt,
      @JsonKey(name: 'active') final bool isActive}) = _$NodeTimerImpl;
  _NodeTimer._() : super._();

  factory _NodeTimer.fromJson(Map<String, dynamic> json) =
      _$NodeTimerImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'start_at')
  int get startAt;
  @override
  @JsonKey(name: 'end_at')
  int get endAt;
  @override
  @JsonKey(name: 'active')
  bool get isActive;

  /// Create a copy of NodeTimer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeTimerImplCopyWith<_$NodeTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
