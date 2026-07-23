// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppLocationImpl _$$AppLocationImplFromJson(Map<String, dynamic> json) =>
    _$AppLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      building: json['building'] as String?,
      floor: json['floor'] as String?,
      apartment: json['apartment'] as String?,
      landmark: json['landmark'] as String?,
    );

Map<String, dynamic> _$$AppLocationImplToJson(_$AppLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'city': instance.city,
      'street': instance.street,
      'building': instance.building,
      'floor': instance.floor,
      'apartment': instance.apartment,
      'landmark': instance.landmark,
    };
