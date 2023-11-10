// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxi_drivers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxiDriversModel _$TaxiDriversModelFromJson(Map<String, dynamic> json) {
  return _TaxiDriversModel.fromJson(json);
}

/// @nodoc
mixin _$TaxiDriversModel {
  @JsonKey(name: 'latitude')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'direction')
  String? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: 'speed')
  String? get speed => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver')
  String? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxiDriversModelCopyWith<TaxiDriversModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxiDriversModelCopyWith<$Res> {
  factory $TaxiDriversModelCopyWith(
          TaxiDriversModel value, $Res Function(TaxiDriversModel) then) =
      _$TaxiDriversModelCopyWithImpl<$Res, TaxiDriversModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'speed') String? speed,
      @JsonKey(name: 'driver') String? driver});
}

/// @nodoc
class _$TaxiDriversModelCopyWithImpl<$Res, $Val extends TaxiDriversModel>
    implements $TaxiDriversModelCopyWith<$Res> {
  _$TaxiDriversModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
    Object? speed = freezed,
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxiDriversModelImplCopyWith<$Res>
    implements $TaxiDriversModelCopyWith<$Res> {
  factory _$$TaxiDriversModelImplCopyWith(_$TaxiDriversModelImpl value,
          $Res Function(_$TaxiDriversModelImpl) then) =
      __$$TaxiDriversModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'speed') String? speed,
      @JsonKey(name: 'driver') String? driver});
}

/// @nodoc
class __$$TaxiDriversModelImplCopyWithImpl<$Res>
    extends _$TaxiDriversModelCopyWithImpl<$Res, _$TaxiDriversModelImpl>
    implements _$$TaxiDriversModelImplCopyWith<$Res> {
  __$$TaxiDriversModelImplCopyWithImpl(_$TaxiDriversModelImpl _value,
      $Res Function(_$TaxiDriversModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
    Object? speed = freezed,
    Object? driver = freezed,
  }) {
    return _then(_$TaxiDriversModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxiDriversModelImpl implements _TaxiDriversModel {
  const _$TaxiDriversModelImpl(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'direction') this.direction,
      @JsonKey(name: 'speed') this.speed,
      @JsonKey(name: 'driver') this.driver});

  factory _$TaxiDriversModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxiDriversModelImplFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final String? latitude;
  @override
  @JsonKey(name: 'longitude')
  final String? longitude;
  @override
  @JsonKey(name: 'direction')
  final String? direction;
  @override
  @JsonKey(name: 'speed')
  final String? speed;
  @override
  @JsonKey(name: 'driver')
  final String? driver;

  @override
  String toString() {
    return 'TaxiDriversModel(latitude: $latitude, longitude: $longitude, direction: $direction, speed: $speed, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxiDriversModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, direction, speed, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxiDriversModelImplCopyWith<_$TaxiDriversModelImpl> get copyWith =>
      __$$TaxiDriversModelImplCopyWithImpl<_$TaxiDriversModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxiDriversModelImplToJson(
      this,
    );
  }
}

abstract class _TaxiDriversModel implements TaxiDriversModel {
  const factory _TaxiDriversModel(
      {@JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'direction') final String? direction,
      @JsonKey(name: 'speed') final String? speed,
      @JsonKey(name: 'driver') final String? driver}) = _$TaxiDriversModelImpl;

  factory _TaxiDriversModel.fromJson(Map<String, dynamic> json) =
      _$TaxiDriversModelImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  String? get latitude;
  @override
  @JsonKey(name: 'longitude')
  String? get longitude;
  @override
  @JsonKey(name: 'direction')
  String? get direction;
  @override
  @JsonKey(name: 'speed')
  String? get speed;
  @override
  @JsonKey(name: 'driver')
  String? get driver;
  @override
  @JsonKey(ignore: true)
  _$$TaxiDriversModelImplCopyWith<_$TaxiDriversModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
