import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required String productId,
    required String merchantId,
    required String name,
    required double price,
    required int quantity,
    String? imageUrl,
    String? notes,
    Map<String, dynamic>? customizations,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

extension CartItemExtension on CartItem {
  double get totalPrice => price * quantity;

  String get formattedTotalPrice {
    return '${totalPrice.toStringAsFixed(2)} جنيه';
  }

  CartItem incrementQuantity() {
    return copyWith(quantity: quantity + 1);
  }

  CartItem decrementQuantity() {
    if (quantity <= 1) return this;
    return copyWith(quantity: quantity - 1);
  }
}