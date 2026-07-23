import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class AppLocation with _$AppLocation {
  const factory AppLocation({
    required double latitude,
    required double longitude,
    String? address,
    String? city,
    String? street,
    String? building,
    String? floor,
    String? apartment,
    String? landmark,
  }) = _AppLocation;

  factory AppLocation.fromJson(Map<String, dynamic> json) =>
      _$AppLocationFromJson(json);
}

extension AppLocationExtension on AppLocation {
  String get fullAddress {
    final parts = <String>[];
    if (street != null) parts.add(street!);
    if (building != null) parts.add('بناية $building');
    if (floor != null) parts.add('طابق $floor');
    if (apartment != null) parts.add('شقة $apartment');
    if (landmark != null) parts.add('بالقرب من $landmark');
    if (city != null) parts.add(city!);
    return parts.join(', ');
  }

  String get shortAddress {
    final parts = <String>[];
    if (street != null) parts.add(street!);
    if (city != null) parts.add(city!);
    return parts.join(', ');
  }

  Map<String, double> toGeoPoint() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  double distanceTo(AppLocation other) {
    const double earthRadius = 6371;
    final double lat1 = latitude * (3.141592653589793 / 180);
    final double lat2 = other.latitude * (3.141592653589793 / 180);
    final double dLat =
        (other.latitude - latitude) * (3.141592653589793 / 180);
    final double dLng =
        (other.longitude - longitude) * (3.141592653589793 / 180);

    final double a = (dLat / 2).sin() * (dLat / 2).sin() +
        lat1.cos() * lat2.cos() * (dLng / 2).sin() * (dLng / 2).sin();
    final double c = 2 * a.sqrt().atan2((1 - a).sqrt());

    return earthRadius * c;
  }
}