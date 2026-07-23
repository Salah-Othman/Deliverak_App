// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return _Merchant.fromJson(json);
}

/// @nodoc
mixin _$Merchant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, String>? get operatingHours => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Merchant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Merchant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantCopyWith<Merchant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantCopyWith<$Res> {
  factory $MerchantCopyWith(Merchant value, $Res Function(Merchant) then) =
      _$MerchantCopyWithImpl<$Res, Merchant>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String address,
    double latitude,
    double longitude,
    String? phone,
    String? email,
    String? logoUrl,
    List<String>? images,
    bool isActive,
    Map<String, String>? operatingHours,
    DateTime? createdAt,
    DateTime? updatedAt,
    double rating,
    int totalRatings,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$MerchantCopyWithImpl<$Res, $Val extends Merchant>
    implements $MerchantCopyWith<$Res> {
  _$MerchantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Merchant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? logoUrl = freezed,
    Object? images = freezed,
    Object? isActive = null,
    Object? operatingHours = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = null,
    Object? totalRatings = null,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            logoUrl: freezed == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            operatingHours: freezed == operatingHours
                ? _value.operatingHours
                : operatingHours // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            totalRatings: null == totalRatings
                ? _value.totalRatings
                : totalRatings // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$MerchantImplCopyWith<$Res>
    implements $MerchantCopyWith<$Res> {
  factory _$$MerchantImplCopyWith(
    _$MerchantImpl value,
    $Res Function(_$MerchantImpl) then,
  ) = __$$MerchantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String address,
    double latitude,
    double longitude,
    String? phone,
    String? email,
    String? logoUrl,
    List<String>? images,
    bool isActive,
    Map<String, String>? operatingHours,
    DateTime? createdAt,
    DateTime? updatedAt,
    double rating,
    int totalRatings,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$MerchantImplCopyWithImpl<$Res>
    extends _$MerchantCopyWithImpl<$Res, _$MerchantImpl>
    implements _$$MerchantImplCopyWith<$Res> {
  __$$MerchantImplCopyWithImpl(
    _$MerchantImpl _value,
    $Res Function(_$MerchantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Merchant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? logoUrl = freezed,
    Object? images = freezed,
    Object? isActive = null,
    Object? operatingHours = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rating = null,
    Object? totalRatings = null,
    Object? metadata = freezed,
  }) {
    return _then(
      _$MerchantImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        logoUrl: freezed == logoUrl
            ? _value.logoUrl
            : logoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        operatingHours: freezed == operatingHours
            ? _value._operatingHours
            : operatingHours // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        totalRatings: null == totalRatings
            ? _value.totalRatings
            : totalRatings // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$MerchantImpl implements _Merchant {
  const _$MerchantImpl({
    required this.id,
    required this.name,
    this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    this.phone,
    this.email,
    this.logoUrl,
    final List<String>? images,
    this.isActive = true,
    final Map<String, String>? operatingHours,
    this.createdAt,
    this.updatedAt,
    this.rating = 0.0,
    this.totalRatings = 0,
    final Map<String, dynamic>? metadata,
  }) : _images = images,
       _operatingHours = operatingHours,
       _metadata = metadata;

  factory _$MerchantImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? logoUrl;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isActive;
  final Map<String, String>? _operatingHours;
  @override
  Map<String, String>? get operatingHours {
    final value = _operatingHours;
    if (value == null) return null;
    if (_operatingHours is EqualUnmodifiableMapView) return _operatingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int totalRatings;
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
    return 'Merchant(id: $id, name: $name, description: $description, address: $address, latitude: $latitude, longitude: $longitude, phone: $phone, email: $email, logoUrl: $logoUrl, images: $images, isActive: $isActive, operatingHours: $operatingHours, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating, totalRatings: $totalRatings, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(
              other._operatingHours,
              _operatingHours,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    address,
    latitude,
    longitude,
    phone,
    email,
    logoUrl,
    const DeepCollectionEquality().hash(_images),
    isActive,
    const DeepCollectionEquality().hash(_operatingHours),
    createdAt,
    updatedAt,
    rating,
    totalRatings,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of Merchant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantImplCopyWith<_$MerchantImpl> get copyWith =>
      __$$MerchantImplCopyWithImpl<_$MerchantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantImplToJson(this);
  }
}

abstract class _Merchant implements Merchant {
  const factory _Merchant({
    required final String id,
    required final String name,
    final String? description,
    required final String address,
    required final double latitude,
    required final double longitude,
    final String? phone,
    final String? email,
    final String? logoUrl,
    final List<String>? images,
    final bool isActive,
    final Map<String, String>? operatingHours,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final double rating,
    final int totalRatings,
    final Map<String, dynamic>? metadata,
  }) = _$MerchantImpl;

  factory _Merchant.fromJson(Map<String, dynamic> json) =
      _$MerchantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get logoUrl;
  @override
  List<String>? get images;
  @override
  bool get isActive;
  @override
  Map<String, String>? get operatingHours;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  double get rating;
  @override
  int get totalRatings;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of Merchant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantImplCopyWith<_$MerchantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
