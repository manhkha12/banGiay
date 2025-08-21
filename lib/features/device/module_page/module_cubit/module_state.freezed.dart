// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleStateCopyWith<ModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStateCopyWith<$Res> {
  factory $ModuleStateCopyWith(
          ModuleState value, $Res Function(ModuleState) then) =
      _$ModuleStateCopyWithImpl<$Res, ModuleState>;
  @useResult
  $Res call({bool isLoading, bool isRefreshing, List<Module> modules});
}

/// @nodoc
class _$ModuleStateCopyWithImpl<$Res, $Val extends ModuleState>
    implements $ModuleStateCopyWith<$Res> {
  _$ModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleStateImplCopyWith<$Res>
    implements $ModuleStateCopyWith<$Res> {
  factory _$$ModuleStateImplCopyWith(
          _$ModuleStateImpl value, $Res Function(_$ModuleStateImpl) then) =
      __$$ModuleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isRefreshing, List<Module> modules});
}

/// @nodoc
class __$$ModuleStateImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$ModuleStateImpl>
    implements _$$ModuleStateImplCopyWith<$Res> {
  __$$ModuleStateImplCopyWithImpl(
      _$ModuleStateImpl _value, $Res Function(_$ModuleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? modules = null,
  }) {
    return _then(_$ModuleStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ));
  }
}

/// @nodoc

class _$ModuleStateImpl extends _ModuleState {
  _$ModuleStateImpl(
      {this.isLoading = false,
      this.isRefreshing = false,
      final List<Module> modules = const []})
      : _modules = modules,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  final List<Module> _modules;
  @override
  @JsonKey()
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'ModuleState(isLoading: $isLoading, isRefreshing: $isRefreshing, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isRefreshing,
      const DeepCollectionEquality().hash(_modules));

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleStateImplCopyWith<_$ModuleStateImpl> get copyWith =>
      __$$ModuleStateImplCopyWithImpl<_$ModuleStateImpl>(this, _$identity);
}

abstract class _ModuleState extends ModuleState {
  factory _ModuleState(
      {final bool isLoading,
      final bool isRefreshing,
      final List<Module> modules}) = _$ModuleStateImpl;
  _ModuleState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isRefreshing;
  @override
  List<Module> get modules;

  /// Create a copy of ModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleStateImplCopyWith<_$ModuleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
