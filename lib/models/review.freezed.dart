// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "review_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "review_id") String id,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "user_id") String userId,
      String comment,
      int rating,
      @JsonKey(name: "created_at") DateTime createdAt,
      String username});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? userId = null,
    Object? comment = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "review_id") String id,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "user_id") String userId,
      String comment,
      int rating,
      @JsonKey(name: "created_at") DateTime createdAt,
      String username});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? userId = null,
    Object? comment = null,
    Object? rating = null,
    Object? createdAt = null,
    Object? username = null,
  }) {
    return _then(_$ReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {@JsonKey(name: "review_id") required this.id,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "user_id") required this.userId,
      required this.comment,
      required this.rating,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.username});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: "review_id")
  final String id;
  @override
  @JsonKey(name: "product_id")
  final String productId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  final String comment;
  @override
  final int rating;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  final String username;

  @override
  String toString() {
    return 'Review(id: $id, productId: $productId, userId: $userId, comment: $comment, rating: $rating, createdAt: $createdAt, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productId, userId, comment, rating, createdAt, username);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "review_id") required final String id,
      @JsonKey(name: "product_id") required final String productId,
      @JsonKey(name: "user_id") required final String userId,
      required final String comment,
      required final int rating,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      required final String username}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: "review_id")
  String get id;
  @override
  @JsonKey(name: "product_id")
  String get productId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  String get comment;
  @override
  int get rating;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  String get username;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
