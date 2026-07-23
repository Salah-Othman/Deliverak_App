// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get originalPrice => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String>? get additionalImages => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  int get preparationTimeMinutes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    String id,
    String merchantId,
    String name,
    String? description,
    double price,
    double? originalPrice,
    String? category,
    String? imageUrl,
    List<String>? additionalImages,
    bool isAvailable,
    int preparationTimeMinutes,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchantId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? originalPrice = freezed,
    Object? category = freezed,
    Object? imageUrl = freezed,
    Object? additionalImages = freezed,
    Object? isAvailable = null,
    Object? preparationTimeMinutes = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            merchantId: null == merchantId
                ? _value.merchantId
                : merchantId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            originalPrice: freezed == originalPrice
                ? _value.originalPrice
                : originalPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            additionalImages: freezed == additionalImages
                ? _value.additionalImages
                : additionalImages // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            preparationTimeMinutes: null == preparationTimeMinutes
                ? _value.preparationTimeMinutes
                : preparationTimeMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String merchantId,
    String name,
    String? description,
    double price,
    double? originalPrice,
    String? category,
    String? imageUrl,
    List<String>? additionalImages,
    bool isAvailable,
    int preparationTimeMinutes,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchantId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? originalPrice = freezed,
    Object? category = freezed,
    Object? imageUrl = freezed,
    Object? additionalImages = freezed,
    Object? isAvailable = null,
    Object? preparationTimeMinutes = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        merchantId: null == merchantId
            ? _value.merchantId
            : merchantId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        originalPrice: freezed == originalPrice
            ? _value.originalPrice
            : originalPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        additionalImages: freezed == additionalImages
            ? _value._additionalImages
            : additionalImages // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        preparationTimeMinutes: null == preparationTimeMinutes
            ? _value.preparationTimeMinutes
            : preparationTimeMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.merchantId,
    required this.name,
    this.description,
    required this.price,
    this.originalPrice,
    this.category,
    this.imageUrl,
    final List<String>? additionalImages,
    this.isAvailable = true,
    this.preparationTimeMinutes = 0,
    this.createdAt,
    this.updatedAt,
    final Map<String, dynamic>? metadata,
  }) : _additionalImages = additionalImages,
       _metadata = metadata;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String merchantId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double price;
  @override
  final double? originalPrice;
  @override
  final String? category;
  @override
  final String? imageUrl;
  final List<String>? _additionalImages;
  @override
  List<String>? get additionalImages {
    final value = _additionalImages;
    if (value == null) return null;
    if (_additionalImages is EqualUnmodifiableListView)
      return _additionalImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final int preparationTimeMinutes;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, merchantId: $merchantId, name: $name, description: $description, price: $price, originalPrice: $originalPrice, category: $category, imageUrl: $imageUrl, additionalImages: $additionalImages, isAvailable: $isAvailable, preparationTimeMinutes: $preparationTimeMinutes, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(
              other._additionalImages,
              _additionalImages,
            ) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.preparationTimeMinutes, preparationTimeMinutes) ||
                other.preparationTimeMinutes == preparationTimeMinutes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    merchantId,
    name,
    description,
    price,
    originalPrice,
    category,
    imageUrl,
    const DeepCollectionEquality().hash(_additionalImages),
    isAvailable,
    preparationTimeMinutes,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({
    required final String id,
    required final String merchantId,
    required final String name,
    final String? description,
    required final double price,
    final double? originalPrice,
    final String? category,
    final String? imageUrl,
    final List<String>? additionalImages,
    final bool isAvailable,
    final int preparationTimeMinutes,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Map<String, dynamic>? metadata,
  }) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get merchantId;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get price;
  @override
  double? get originalPrice;
  @override
  String? get category;
  @override
  String? get imageUrl;
  @override
  List<String>? get additionalImages;
  @override
  bool get isAvailable;
  @override
  int get preparationTimeMinutes;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
