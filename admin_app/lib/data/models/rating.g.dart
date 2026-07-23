// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
  id: json['id'] as String,
  orderId: json['orderId'] as String,
  reviewerId: json['reviewerId'] as String,
  revieweeId: json['revieweeId'] as String,
  rating: (json['rating'] as num).toDouble(),
  comment: json['comment'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'reviewerId': instance.reviewerId,
      'revieweeId': instance.revieweeId,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
