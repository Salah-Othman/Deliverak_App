// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  double? get deliveryLatitude => throw _privateConstructorUsedError;
  double? get deliveryLongitude => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  double? get deliveryFee => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get promoCode => throw _privateConstructorUsedError;
  String? get customerNote => throw _privateConstructorUsedError;
  String? get driverNote => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({
    String id,
    String customerId,
    String? driverId,
    String merchantId,
    List<CartItem> items,
    double totalAmount,
    OrderStatus status,
    PaymentMethod paymentMethod,
    String deliveryAddress,
    double? deliveryLatitude,
    double? deliveryLongitude,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deliveredAt,
    double? deliveryFee,
    double? discount,
    String? promoCode,
    String? customerNote,
    String? driverNote,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? driverId = freezed,
    Object? merchantId = null,
    Object? items = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? deliveryAddress = null,
    Object? deliveryLatitude = freezed,
    Object? deliveryLongitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveredAt = freezed,
    Object? deliveryFee = freezed,
    Object? discount = freezed,
    Object? promoCode = freezed,
    Object? customerNote = freezed,
    Object? driverNote = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            merchantId: null == merchantId
                ? _value.merchantId
                : merchantId // ignore: cast_nullable_to_non_nullable
                      as String,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<CartItem>,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OrderStatus,
            paymentMethod: null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as PaymentMethod,
            deliveryAddress: null == deliveryAddress
                ? _value.deliveryAddress
                : deliveryAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryLatitude: freezed == deliveryLatitude
                ? _value.deliveryLatitude
                : deliveryLatitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            deliveryLongitude: freezed == deliveryLongitude
                ? _value.deliveryLongitude
                : deliveryLongitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deliveredAt: freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deliveryFee: freezed == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as double?,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as double?,
            promoCode: freezed == promoCode
                ? _value.promoCode
                : promoCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerNote: freezed == customerNote
                ? _value.customerNote
                : customerNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            driverNote: freezed == driverNote
                ? _value.driverNote
                : driverNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
    _$OrderImpl value,
    $Res Function(_$OrderImpl) then,
  ) = __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String customerId,
    String? driverId,
    String merchantId,
    List<CartItem> items,
    double totalAmount,
    OrderStatus status,
    PaymentMethod paymentMethod,
    String deliveryAddress,
    double? deliveryLatitude,
    double? deliveryLongitude,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deliveredAt,
    double? deliveryFee,
    double? discount,
    String? promoCode,
    String? customerNote,
    String? driverNote,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
    _$OrderImpl _value,
    $Res Function(_$OrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? driverId = freezed,
    Object? merchantId = null,
    Object? items = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? deliveryAddress = null,
    Object? deliveryLatitude = freezed,
    Object? deliveryLongitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveredAt = freezed,
    Object? deliveryFee = freezed,
    Object? discount = freezed,
    Object? promoCode = freezed,
    Object? customerNote = freezed,
    Object? driverNote = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$OrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        merchantId: null == merchantId
            ? _value.merchantId
            : merchantId // ignore: cast_nullable_to_non_nullable
                  as String,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<CartItem>,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OrderStatus,
        paymentMethod: null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as PaymentMethod,
        deliveryAddress: null == deliveryAddress
            ? _value.deliveryAddress
            : deliveryAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryLatitude: freezed == deliveryLatitude
            ? _value.deliveryLatitude
            : deliveryLatitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        deliveryLongitude: freezed == deliveryLongitude
            ? _value.deliveryLongitude
            : deliveryLongitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deliveredAt: freezed == deliveredAt
            ? _value.deliveredAt
            : deliveredAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deliveryFee: freezed == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as double?,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as double?,
        promoCode: freezed == promoCode
            ? _value.promoCode
            : promoCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerNote: freezed == customerNote
            ? _value.customerNote
            : customerNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        driverNote: freezed == driverNote
            ? _value.driverNote
            : driverNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl({
    required this.id,
    required this.customerId,
    this.driverId,
    required this.merchantId,
    required final List<CartItem> items,
    required this.totalAmount,
    required this.status,
    required this.paymentMethod,
    required this.deliveryAddress,
    this.deliveryLatitude,
    this.deliveryLongitude,
    this.createdAt,
    this.updatedAt,
    this.deliveredAt,
    this.deliveryFee,
    this.discount,
    this.promoCode,
    this.customerNote,
    this.driverNote,
    final Map<String, dynamic>? metadata,
  }) : _items = items,
       _metadata = metadata;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String customerId;
  @override
  final String? driverId;
  @override
  final String merchantId;
  final List<CartItem> _items;
  @override
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double totalAmount;
  @override
  final OrderStatus status;
  @override
  final PaymentMethod paymentMethod;
  @override
  final String deliveryAddress;
  @override
  final double? deliveryLatitude;
  @override
  final double? deliveryLongitude;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deliveredAt;
  @override
  final double? deliveryFee;
  @override
  final double? discount;
  @override
  final String? promoCode;
  @override
  final String? customerNote;
  @override
  final String? driverNote;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Order(id: $id, customerId: $customerId, driverId: $driverId, merchantId: $merchantId, items: $items, totalAmount: $totalAmount, status: $status, paymentMethod: $paymentMethod, deliveryAddress: $deliveryAddress, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, createdAt: $createdAt, updatedAt: $updatedAt, deliveredAt: $deliveredAt, deliveryFee: $deliveryFee, discount: $discount, promoCode: $promoCode, customerNote: $customerNote, driverNote: $driverNote, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.deliveryLatitude, deliveryLatitude) ||
                other.deliveryLatitude == deliveryLatitude) &&
            (identical(other.deliveryLongitude, deliveryLongitude) ||
                other.deliveryLongitude == deliveryLongitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.driverNote, driverNote) ||
                other.driverNote == driverNote) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    customerId,
    driverId,
    merchantId,
    const DeepCollectionEquality().hash(_items),
    totalAmount,
    status,
    paymentMethod,
    deliveryAddress,
    deliveryLatitude,
    deliveryLongitude,
    createdAt,
    updatedAt,
    deliveredAt,
    deliveryFee,
    discount,
    promoCode,
    customerNote,
    driverNote,
    const DeepCollectionEquality().hash(_metadata),
  ]);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order({
    required final String id,
    required final String customerId,
    final String? driverId,
    required final String merchantId,
    required final List<CartItem> items,
    required final double totalAmount,
    required final OrderStatus status,
    required final PaymentMethod paymentMethod,
    required final String deliveryAddress,
    final double? deliveryLatitude,
    final double? deliveryLongitude,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final DateTime? deliveredAt,
    final double? deliveryFee,
    final double? discount,
    final String? promoCode,
    final String? customerNote,
    final String? driverNote,
    final Map<String, dynamic>? metadata,
  }) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get customerId;
  @override
  String? get driverId;
  @override
  String get merchantId;
  @override
  List<CartItem> get items;
  @override
  double get totalAmount;
  @override
  OrderStatus get status;
  @override
  PaymentMethod get paymentMethod;
  @override
  String get deliveryAddress;
  @override
  double? get deliveryLatitude;
  @override
  double? get deliveryLongitude;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deliveredAt;
  @override
  double? get deliveryFee;
  @override
  double? get discount;
  @override
  String? get promoCode;
  @override
  String? get customerNote;
  @override
  String? get driverNote;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
