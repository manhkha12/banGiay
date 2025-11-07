// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  @JsonKey(name: 'cart_id')
  String? get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  String? get variantId => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_id') String? cartId,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'variant_id') String? variantId,
      String? color,
      String? name,
      String? image,
      int? quantity,
      String? price,
      String? size});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = freezed,
    Object? productId = freezed,
    Object? variantId = freezed,
    Object? color = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
          _$CartItemImpl value, $Res Function(_$CartItemImpl) then) =
      __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_id') String? cartId,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'variant_id') String? variantId,
      String? color,
      String? name,
      String? image,
      int? quantity,
      String? price,
      String? size});
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = freezed,
    Object? productId = freezed,
    Object? variantId = freezed,
    Object? color = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? size = freezed,
  }) {
    return _then(_$CartItemImpl(
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  _$CartItemImpl(
      {@JsonKey(name: 'cart_id') required this.cartId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'variant_id') required this.variantId,
      required this.color,
      required this.name,
      required this.image,
      required this.quantity,
      required this.price,
      required this.size});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  @JsonKey(name: 'cart_id')
  final String? cartId;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'variant_id')
  final String? variantId;
  @override
  final String? color;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? quantity;
  @override
  final String? price;
  @override
  final String? size;

  @override
  String toString() {
    return 'CartItem(cartId: $cartId, productId: $productId, variantId: $variantId, color: $color, name: $name, image: $image, quantity: $quantity, price: $price, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, productId, variantId,
      color, name, image, quantity, price, size);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  factory _CartItem(
      {@JsonKey(name: 'cart_id') required final String? cartId,
      @JsonKey(name: 'product_id') required final String? productId,
      @JsonKey(name: 'variant_id') required final String? variantId,
      required final String? color,
      required final String? name,
      required final String? image,
      required final int? quantity,
      required final String? price,
      required final String? size}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  @JsonKey(name: 'cart_id')
  String? get cartId;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'variant_id')
  String? get variantId;
  @override
  String? get color;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get quantity;
  @override
  String? get price;
  @override
  String? get size;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
