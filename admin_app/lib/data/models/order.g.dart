// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: json['id'] as String,
  customerId: json['customerId'] as String,
  driverId: json['driverId'] as String?,
  merchantId: json['merchantId'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  deliveryAddress: json['deliveryAddress'] as String,
  deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
  deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  deliveredAt: json['deliveredAt'] == null
      ? null
      : DateTime.parse(json['deliveredAt'] as String),
  deliveryFee: (json['deliveryFee'] as num?)?.toDouble(),
  discount: (json['discount'] as num?)?.toDouble(),
  promoCode: json['promoCode'] as String?,
  customerNote: json['customerNote'] as String?,
  driverNote: json['driverNote'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'driverId': instance.driverId,
      'merchantId': instance.merchantId,
      'items': instance.items,
      'totalAmount': instance.totalAmount,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'deliveryAddress': instance.deliveryAddress,
      'deliveryLatitude': instance.deliveryLatitude,
      'deliveryLongitude': instance.deliveryLongitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'deliveryFee': instance.deliveryFee,
      'discount': instance.discount,
      'promoCode': instance.promoCode,
      'customerNote': instance.customerNote,
      'driverNote': instance.driverNote,
      'metadata': instance.metadata,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.accepted: 'accepted',
  OrderStatus.preparing: 'preparing',
  OrderStatus.ready: 'ready',
  OrderStatus.pickedUp: 'pickedUp',
  OrderStatus.onTheWay: 'onTheWay',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cod: 'cod',
  PaymentMethod.wallet: 'wallet',
};
