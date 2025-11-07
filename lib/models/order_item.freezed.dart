// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<OrderProductItem> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "total_price") String? totalPrice,
      String? status,
      List<OrderProductItem> items});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderProductItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "total_price") String? totalPrice,
      String? status,
      List<OrderProductItem> items});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? items = null,
  }) {
    return _then(_$OrderItemImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderProductItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {@JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "total_price") required this.totalPrice,
      required this.status,
      required final List<OrderProductItem> items})
      : _items = items;

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final int orderId;
  @override
  @JsonKey(name: "total_price")
  final String? totalPrice;
  @override
  final String? status;
  final List<OrderProductItem> _items;
  @override
  List<OrderProductItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItem(orderId: $orderId, totalPrice: $totalPrice, status: $status, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, totalPrice, status,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {@JsonKey(name: "order_id") required final int orderId,
      @JsonKey(name: "total_price") required final String? totalPrice,
      required final String? status,
      required final List<OrderProductItem> items}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  int get orderId;
  @override
  @JsonKey(name: "total_price")
  String? get totalPrice;
  @override
  String? get status;
  @override
  List<OrderProductItem> get items;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProductItem _$OrderProductItemFromJson(Map<String, dynamic> json) {
  return _OrderProductItem.fromJson(json);
}

/// @nodoc
mixin _$OrderProductItem {
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;

  /// Serializes this OrderProductItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductItemCopyWith<OrderProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductItemCopyWith<$Res> {
  factory $OrderProductItemCopyWith(
          OrderProductItem value, $Res Function(OrderProductItem) then) =
      _$OrderProductItemCopyWithImpl<$Res, OrderProductItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_name") String? productName,
      String? size,
      String? color,
      int quantity,
      String? price,
      String image,
      String? brand});
}

/// @nodoc
class _$OrderProductItemCopyWithImpl<$Res, $Val extends OrderProductItem>
    implements $OrderProductItemCopyWith<$Res> {
  _$OrderProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? quantity = null,
    Object? price = freezed,
    Object? image = null,
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductItemImplCopyWith<$Res>
    implements $OrderProductItemCopyWith<$Res> {
  factory _$$OrderProductItemImplCopyWith(_$OrderProductItemImpl value,
          $Res Function(_$OrderProductItemImpl) then) =
      __$$OrderProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_name") String? productName,
      String? size,
      String? color,
      int quantity,
      String? price,
      String image,
      String? brand});
}

/// @nodoc
class __$$OrderProductItemImplCopyWithImpl<$Res>
    extends _$OrderProductItemCopyWithImpl<$Res, _$OrderProductItemImpl>
    implements _$$OrderProductItemImplCopyWith<$Res> {
  __$$OrderProductItemImplCopyWithImpl(_$OrderProductItemImpl _value,
      $Res Function(_$OrderProductItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? quantity = null,
    Object? price = freezed,
    Object? image = null,
    Object? brand = freezed,
  }) {
    return _then(_$OrderProductItemImpl(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductItemImpl implements _OrderProductItem {
  const _$OrderProductItemImpl(
      {@JsonKey(name: "product_name") required this.productName,
      required this.size,
      required this.color,
      required this.quantity,
      required this.price,
      required this.image,
      required this.brand});

  factory _$OrderProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductItemImplFromJson(json);

  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  final String? size;
  @override
  final String? color;
  @override
  final int quantity;
  @override
  final String? price;
  @override
  final String image;
  @override
  final String? brand;

  @override
  String toString() {
    return 'OrderProductItem(productName: $productName, size: $size, color: $color, quantity: $quantity, price: $price, image: $image, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductItemImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, productName, size, color, quantity, price, image, brand);

  /// Create a copy of OrderProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductItemImplCopyWith<_$OrderProductItemImpl> get copyWith =>
      __$$OrderProductItemImplCopyWithImpl<_$OrderProductItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductItemImplToJson(
      this,
    );
  }
}

abstract class _OrderProductItem implements OrderProductItem {
  const factory _OrderProductItem(
      {@JsonKey(name: "product_name") required final String? productName,
      required final String? size,
      required final String? color,
      required final int quantity,
      required final String? price,
      required final String image,
      required final String? brand}) = _$OrderProductItemImpl;

  factory _OrderProductItem.fromJson(Map<String, dynamic> json) =
      _$OrderProductItemImpl.fromJson;

  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  String? get size;
  @override
  String? get color;
  @override
  int get quantity;
  @override
  String? get price;
  @override
  String get image;
  @override
  String? get brand;

  /// Create a copy of OrderProductItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductItemImplCopyWith<_$OrderProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
