import 'app_exception.dart';

class AuthException extends AppException {
  const AuthException({
    required super.message,
    super.code,
    super.details,
  });

  factory AuthException.phoneNotVerified() => const AuthException(
        message: 'الرجاء التحقق من رقم الهاتف',
        code: 'phone-not-verified',
      );

  factory AuthException.invalidOtp() => const AuthException(
        message: 'رمز التحقق غير صحيح',
        code: 'invalid-otp',
      );

  factory AuthException.userNotFound() => const AuthException(
        message: 'المستخدم غير موجود',
        code: 'user-not-found',
      );

  factory AuthException.networkError() => const AuthException(
        message: 'خطأ في الاتصال بالشبكة',
        code: 'network-error',
      );

  factory AuthException.tooManyRequests() => const AuthException(
        message: 'طلبات كثيرة جداً، الرجاء المحاولة لاحقاً',
        code: 'too-many-requests',
      );

  factory AuthException.sessionExpired() => const AuthException(
        message: 'انتهت الجلسة، الرجاء تسجيل الدخول مرة أخرى',
        code: 'session-expired',
      );
}