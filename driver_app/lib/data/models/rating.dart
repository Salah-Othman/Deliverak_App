import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    required String id,
    required String orderId,
    required String reviewerId,
    required String revieweeId,
    required double rating,
    String? comment,
    DateTime? createdAt,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json);
}

extension RatingExtension on Rating {
  String get ratingText {
    if (rating >= 4.5) return 'ممتاز';
    if (rating >= 4.0) return 'جيد جداً';
    if (rating >= 3.5) return 'جيد';
    if (rating >= 3.0) return 'مقبول';
    return 'ضعيف';
  }
}