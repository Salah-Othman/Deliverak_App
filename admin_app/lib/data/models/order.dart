import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item.dart';

part 'order.freezed.dart';
part 'order.g.dart';

enum OrderStatus {
  pending,
  accepted,
  preparing,
  ready,
  pickedUp,
  onTheWay,
  delivered,
  cancelled,
}

enum PaymentMethod { cod, wallet }

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required String customerId,
    String? driverId,
    required String merchantId,
    required List<CartItem> items,
    required double totalAmount,
    required OrderStatus status,
    required PaymentMethod paymentMethod,
    required String deliveryAddress,
    double? deliveryLatitude,
    double? deliveryLongitude,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deliveredAt,
    double? deliveryFee,
    double? discount,
    String? promoCode,
    String? customerNote,
    String? driverNote,
    Map<String, dynamic>? metadata,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

extension OrderStatusExtension on OrderStatus {
  String get value {
    switch (this) {
      case OrderStatus.pending:
        return 'pending';
      case OrderStatus.accepted:
        return 'accepted';
      case OrderStatus.preparing:
        return 'preparing';
      case OrderStatus.ready:
        return 'ready';
      case OrderStatus.pickedUp:
        return 'picked_up';
      case OrderStatus.onTheWay:
        return 'on_the_way';
      case OrderStatus.delivered:
        return 'delivered';
      case OrderStatus.cancelled:
        return 'cancelled';
    }
  }

  static OrderStatus fromString(String value) {
    switch (value) {
      case 'pending':
        return OrderStatus.pending;
      case 'accepted':
        return OrderStatus.accepted;
      case 'preparing':
        return OrderStatus.preparing;
      case 'ready':
        return OrderStatus.ready;
      case 'picked_up':
        return OrderStatus.pickedUp;
      case 'on_the_way':
        return OrderStatus.onTheWay;
      case 'delivered':
        return OrderStatus.delivered;
      case 'cancelled':
        return OrderStatus.cancelled;
      default:
        return OrderStatus.pending;
    }
  }

  String get arabicName {
    switch (this) {
      case OrderStatus.pending:
        return 'قيد الانتظار';
      case OrderStatus.accepted:
        return 'تم القبول';
      case OrderStatus.preparing:
        return 'قيد التجهيز';
      case OrderStatus.ready:
        return 'جاهز';
      case OrderStatus.pickedUp:
        return 'تم الاستلام';
      case OrderStatus.onTheWay:
        return 'في الطريق';
      case OrderStatus.delivered:
        return 'تم التوصيل';
      case OrderStatus.cancelled:
        return 'ملغي';
    }
  }
}

extension PaymentMethodExtension on PaymentMethod {
  String get value {
    switch (this) {
      case PaymentMethod.cod:
        return 'cod';
      case PaymentMethod.wallet:
        return 'wallet';
    }
  }

  static PaymentMethod fromString(String value) {
    switch (value) {
      case 'cod':
        return PaymentMethod.cod;
      case 'wallet':
        return PaymentMethod.wallet;
      default:
        return PaymentMethod.cod;
    }
  }

  String get arabicName {
    switch (this) {
      case PaymentMethod.cod:
        return 'الدفع عند الاستلام';
      case PaymentMethod.wallet:
        return 'المحفظة الإلكترونية';
    }
  }
}