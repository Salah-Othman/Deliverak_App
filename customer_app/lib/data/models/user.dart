import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum UserRole { customer, driver, admin, merchant }

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String phone,
    String? email,
    required String name,
    required UserRole role,
    String? profileImage,
    String? fcmToken,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool isActive,
    Map<String, dynamic>? metadata,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserRoleExtension on UserRole {
  String get value {
    switch (this) {
      case UserRole.customer:
        return 'customer';
      case UserRole.driver:
        return 'driver';
      case UserRole.admin:
        return 'admin';
      case UserRole.merchant:
        return 'merchant';
    }
  }

  static UserRole fromString(String value) {
    switch (value) {
      case 'customer':
        return UserRole.customer;
      case 'driver':
        return UserRole.driver;
      case 'admin':
        return UserRole.admin;
      case 'merchant':
        return UserRole.merchant;
      default:
        return UserRole.customer;
    }
  }
}