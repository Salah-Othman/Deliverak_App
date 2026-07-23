// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      merchantId: json['merchantId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      category: json['category'] as String?,
      imageUrl: json['imageUrl'] as String?,
      additionalImages: (json['additionalImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isAvailable: json['isAvailable'] as bool? ?? true,
      preparationTimeMinutes:
          (json['preparationTimeMinutes'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchantId': instance.merchantId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'category': instance.category,
      'imageUrl': instance.imageUrl,
      'additionalImages': instance.additionalImages,
      'isAvailable': instance.isAvailable,
      'preparationTimeMinutes': instance.preparationTimeMinutes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };
