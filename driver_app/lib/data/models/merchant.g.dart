// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantImpl _$$MerchantImplFromJson(Map<String, dynamic> json) =>
    _$MerchantImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      logoUrl: json['logoUrl'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool? ?? true,
      operatingHours: (json['operatingHours'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      totalRatings: (json['totalRatings'] as num?)?.toInt() ?? 0,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MerchantImplToJson(_$MerchantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'email': instance.email,
      'logoUrl': instance.logoUrl,
      'images': instance.images,
      'isActive': instance.isActive,
      'operatingHours': instance.operatingHours,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'rating': instance.rating,
      'totalRatings': instance.totalRatings,
      'metadata': instance.metadata,
    };
