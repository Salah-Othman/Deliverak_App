// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      productId: json['productId'] as String,
      merchantId: json['merchantId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      imageUrl: json['imageUrl'] as String?,
      notes: json['notes'] as String?,
      customizations: json['customizations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'merchantId': instance.merchantId,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'imageUrl': instance.imageUrl,
      'notes': instance.notes,
      'customizations': instance.customizations,
    };
