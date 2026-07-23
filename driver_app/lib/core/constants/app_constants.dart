class AppConstants {
  AppConstants._();

  static const String appName = 'ديليفراك - سائق';
  static const String appNameEn = 'Deliverak Driver';
  static const String appTagline = 'توصيل سريع وموثوق';

  static const int maxOtpAttempts = 5;
  static const int otpResendCooldownSeconds = 60;
  static const int defaultPageSize = 20;

  static const double minOrderAmount = 50.0;
  static const double maxOrderAmount = 10000.0;
  static const double deliveryFee = 15.0;

  static const int maxImageWidth = 1024;
  static const int maxImageHeight = 1024;
  static const int maxImageSizeKB = 500;

  static const Duration cacheExpiration = Duration(hours: 1);
  static const Duration sessionTimeout = Duration(days: 30);
  static const Duration locationUpdateInterval = Duration(seconds: 30);
}