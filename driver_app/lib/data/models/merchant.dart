import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant.freezed.dart';
part 'merchant.g.dart';

@freezed
class Merchant with _$Merchant {
  const factory Merchant({
    required String id,
    required String name,
    String? description,
    required String address,
    required double latitude,
    required double longitude,
    String? phone,
    String? email,
    String? logoUrl,
    List<String>? images,
    @Default(true) bool isActive,
    Map<String, String>? operatingHours,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0.0) double rating,
    @Default(0) int totalRatings,
    Map<String, dynamic>? metadata,
  }) = _Merchant;

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);
}

extension MerchantExtension on Merchant {
  String get formattedRating {
    return rating.toStringAsFixed(1);
  }

  bool get isOpen {
    if (operatingHours == null) return true;

    final now = DateTime.now();
    final dayName = _getDayName(now.weekday);
    final hours = operatingHours![dayName];

    if (hours == null) return false;

    final parts = hours.split('-');
    if (parts.length != 2) return true;

    final openTime = _parseTime(parts[0]);
    final closeTime = _parseTime(parts[1]);

    final currentTime = DateTime(2024, 1, 1, now.hour, now.minute);

    return currentTime.isAfter(openTime) && currentTime.isBefore(closeTime);
  }

  String _getDayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'monday';
      case 2:
        return 'tuesday';
      case 3:
        return 'wednesday';
      case 4:
        return 'thursday';
      case 5:
        return 'friday';
      case 6:
        return 'saturday';
      case 7:
        return 'sunday';
      default:
        return 'monday';
    }
  }

  DateTime _parseTime(String time) {
    final parts = time.split(':');
    final hour = int.tryParse(parts[0]) ?? 0;
    final minute = parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0;
    return DateTime(2024, 1, 1, hour, minute);
  }
}