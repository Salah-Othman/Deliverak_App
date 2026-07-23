import 'app_exception.dart';

class OrderException extends AppException {
  const OrderException({
    required super.message,
    super.code,
    super.details,
  });

  factory OrderException.notFound() => const OrderException(
        message: 'الطلب غير موجود',
        code: 'order-not-found',
      );

  factory OrderException.alreadyAccepted() => const OrderException(
        message: 'تم قبول الطلب بالفعل',
        code: 'order-already-accepted',
      );

  factory OrderException.alreadyDelivered() => const OrderException(
        message: 'تم توصيل الطلب بالفعل',
        code: 'order-already-delivered',
      );

  factory OrderException.cancelled() => const OrderException(
        message: 'تم إلغاء الطلب',
        code: 'order-cancelled',
      );

  factory OrderException.paymentFailed() => const OrderException(
        message: 'فشل في معالجة الدفع',
        code: 'payment-failed',
      );

  factory OrderException.deliveryFailed() => const OrderException(
        message: 'فشل في توصيل الطلب',
        code: 'delivery-failed',
      );
}