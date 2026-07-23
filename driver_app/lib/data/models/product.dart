import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String merchantId,
    required String name,
    String? description,
    required double price,
    double? originalPrice,
    String? category,
    String? imageUrl,
    List<String>? additionalImages,
    @Default(true) bool isAvailable,
    @Default(0) int preparationTimeMinutes,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

extension ProductExtension on Product {
  bool get hasDiscount => originalPrice != null && originalPrice! > price;

  double get discountPercentage {
    if (!hasDiscount) return 0;
    return ((originalPrice! - price) / originalPrice! * 100).roundToDouble();
  }

  String get formattedPrice {
    return '${price.toStringAsFixed(2)} جنيه';
  }

  String get formattedOriginalPrice {
    if (!hasDiscount) return '';
    return '${originalPrice!.toStringAsFixed(2)} جنيه';
  }
}