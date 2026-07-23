import 'app_exception.dart';

class PaymentException extends AppException {
  const PaymentException({
    required super.message,
    super.code,
    super.details,
  });

  factory PaymentException.insufficientBalance() => const PaymentException(
        message: 'الرصيد غير كافٍ',
        code: 'insufficient-balance',
      );

  factory PaymentException.invalidCard() => const PaymentException(
        message: 'بيانات البطاقة غير صحيحة',
        code: 'invalid-card',
      );

  factory PaymentException.transactionFailed() => const PaymentException(
        message: 'فشلت المعاملة',
        code: 'transaction-failed',
      );

  factory PaymentException.networkError() => const PaymentException(
        message: 'خطأ في الاتصال بالشبكة',
        code: 'network-error',
      );

  factory PaymentException.walletNotActive() => const PaymentException(
        message: 'المحفظة غير مفعلة',
        code: 'wallet-not-active',
      );
}