// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code) data,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code)? data,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code)? data,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorData value) data,
    required TResult Function(_AppErrorNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorData value)? data,
    TResult? Function(_AppErrorNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorData value)? data,
    TResult Function(_AppErrorNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppErrorDataImplCopyWith<$Res> {
  factory _$$AppErrorDataImplCopyWith(
          _$AppErrorDataImpl value, $Res Function(_$AppErrorDataImpl) then) =
      __$$AppErrorDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$AppErrorDataImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorDataImpl>
    implements _$$AppErrorDataImplCopyWith<$Res> {
  __$$AppErrorDataImplCopyWithImpl(
      _$AppErrorDataImpl _value, $Res Function(_$AppErrorDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$AppErrorDataImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppErrorDataImpl implements _AppErrorData {
  _$AppErrorDataImpl(this.message, {this.code});

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'AppError.data(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorDataImplCopyWith<_$AppErrorDataImpl> get copyWith =>
      __$$AppErrorDataImplCopyWithImpl<_$AppErrorDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code) data,
    required TResult Function() none,
  }) {
    return data(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code)? data,
    TResult? Function()? none,
  }) {
    return data?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code)? data,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorData value) data,
    required TResult Function(_AppErrorNone value) none,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorData value)? data,
    TResult? Function(_AppErrorNone value)? none,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorData value)? data,
    TResult Function(_AppErrorNone value)? none,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _AppErrorData implements AppError {
  factory _AppErrorData(final String message, {final String? code}) =
      _$AppErrorDataImpl;

  String get message;
  String? get code;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorDataImplCopyWith<_$AppErrorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppErrorNoneImplCopyWith<$Res> {
  factory _$$AppErrorNoneImplCopyWith(
          _$AppErrorNoneImpl value, $Res Function(_$AppErrorNoneImpl) then) =
      __$$AppErrorNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppErrorNoneImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorNoneImpl>
    implements _$$AppErrorNoneImplCopyWith<$Res> {
  __$$AppErrorNoneImplCopyWithImpl(
      _$AppErrorNoneImpl _value, $Res Function(_$AppErrorNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppErrorNoneImpl implements _AppErrorNone {
  _$AppErrorNoneImpl();

  @override
  String toString() {
    return 'AppError.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppErrorNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code) data,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code)? data,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code)? data,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorData value) data,
    required TResult Function(_AppErrorNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorData value)? data,
    TResult? Function(_AppErrorNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorData value)? data,
    TResult Function(_AppErrorNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _AppErrorNone implements AppError {
  factory _AppErrorNone() = _$AppErrorNoneImpl;
}
