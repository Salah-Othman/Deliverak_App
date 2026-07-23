// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppLocation _$AppLocationFromJson(Map<String, dynamic> json) {
  return _AppLocation.fromJson(json);
}

/// @nodoc
mixin _$AppLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get building => throw _privateConstructorUsedError;
  String? get floor => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;

  /// Serializes this AppLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLocationCopyWith<AppLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocationCopyWith<$Res> {
  factory $AppLocationCopyWith(
    AppLocation value,
    $Res Function(AppLocation) then,
  ) = _$AppLocationCopyWithImpl<$Res, AppLocation>;
  @useResult
  $Res call({
    double latitude,
    double longitude,
    String? address,
    String? city,
    String? street,
    String? building,
    String? floor,
    String? apartment,
    String? landmark,
  });
}

/// @nodoc
class _$AppLocationCopyWithImpl<$Res, $Val extends AppLocation>
    implements $AppLocationCopyWith<$Res> {
  _$AppLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? landmark = freezed,
  }) {
    return _then(
      _value.copyWith(
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            street: freezed == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                      as String?,
            building: freezed == building
                ? _value.building
                : building // ignore: cast_nullable_to_non_nullable
                      as String?,
            floor: freezed == floor
                ? _value.floor
                : floor // ignore: cast_nullable_to_non_nullable
                      as String?,
            apartment: freezed == apartment
                ? _value.apartment
                : apartment // ignore: cast_nullable_to_non_nullable
                      as String?,
            landmark: freezed == landmark
                ? _value.landmark
                : landmark // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppLocationImplCopyWith<$Res>
    implements $AppLocationCopyWith<$Res> {
  factory _$$AppLocationImplCopyWith(
    _$AppLocationImpl value,
    $Res Function(_$AppLocationImpl) then,
  ) = __$$AppLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double latitude,
    double longitude,
    String? address,
    String? city,
    String? street,
    String? building,
    String? floor,
    String? apartment,
    String? landmark,
  });
}

/// @nodoc
class __$$AppLocationImplCopyWithImpl<$Res>
    extends _$AppLocationCopyWithImpl<$Res, _$AppLocationImpl>
    implements _$$AppLocationImplCopyWith<$Res> {
  __$$AppLocationImplCopyWithImpl(
    _$AppLocationImpl _value,
    $Res Function(_$AppLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? landmark = freezed,
  }) {
    return _then(
      _$AppLocationImpl(
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        street: freezed == street
            ? _value.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String?,
        building: freezed == building
            ? _value.building
            : building // ignore: cast_nullable_to_non_nullable
                  as String?,
        floor: freezed == floor
            ? _value.floor
            : floor // ignore: cast_nullable_to_non_nullable
                  as String?,
        apartment: freezed == apartment
            ? _value.apartment
            : apartment // ignore: cast_nullable_to_non_nullable
                  as String?,
        landmark: freezed == landmark
            ? _value.landmark
            : landmark // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLocationImpl implements _AppLocation {
  const _$AppLocationImpl({
    required this.latitude,
    required this.longitude,
    this.address,
    this.city,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.landmark,
  });

  factory _$AppLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? building;
  @override
  final String? floor;
  @override
  final String? apartment;
  @override
  final String? landmark;

  @override
  String toString() {
    return 'AppLocation(latitude: $latitude, longitude: $longitude, address: $address, city: $city, street: $street, building: $building, floor: $floor, apartment: $apartment, landmark: $landmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    latitude,
    longitude,
    address,
    city,
    street,
    building,
    floor,
    apartment,
    landmark,
  );

  /// Create a copy of AppLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocationImplCopyWith<_$AppLocationImpl> get copyWith =>
      __$$AppLocationImplCopyWithImpl<_$AppLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocationImplToJson(this);
  }
}

abstract class _AppLocation implements AppLocation {
  const factory _AppLocation({
    required final double latitude,
    required final double longitude,
    final String? address,
    final String? city,
    final String? street,
    final String? building,
    final String? floor,
    final String? apartment,
    final String? landmark,
  }) = _$AppLocationImpl;

  factory _AppLocation.fromJson(Map<String, dynamic> json) =
      _$AppLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get street;
  @override
  String? get building;
  @override
  String? get floor;
  @override
  String? get apartment;
  @override
  String? get landmark;

  /// Create a copy of AppLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocationImplCopyWith<_$AppLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
