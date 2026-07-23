// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String?,
  name: json['name'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  profileImage: json['profileImage'] as String?,
  fcmToken: json['fcmToken'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  isActive: json['isActive'] as bool? ?? false,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
      'role': _$UserRoleEnumMap[instance.role]!,
      'profileImage': instance.profileImage,
      'fcmToken': instance.fcmToken,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isActive': instance.isActive,
      'metadata': instance.metadata,
    };

const _$UserRoleEnumMap = {
  UserRole.customer: 'customer',
  UserRole.driver: 'driver',
  UserRole.admin: 'admin',
  UserRole.merchant: 'merchant',
};
