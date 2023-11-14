// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_driver_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateDriverModel _$CreateDriverModelFromJson(Map<String, dynamic> json) {
  return _CreateDriverModel.fromJson(json);
}

/// @nodoc
mixin _$CreateDriverModel {
  @JsonKey(name: 'transmitter_id')
  String? get transmitterId => throw _privateConstructorUsedError;
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
  $CreateDriverModelCopyWith<CreateDriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDriverModelCopyWith<$Res> {
  factory $CreateDriverModelCopyWith(
          CreateDriverModel value, $Res Function(CreateDriverModel) then) =
      _$CreateDriverModelCopyWithImpl<$Res, CreateDriverModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transmitter_id') String? transmitterId,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'speed') String? speed,
      @JsonKey(name: 'driver') String? driver});
}

/// @nodoc
class _$CreateDriverModelCopyWithImpl<$Res, $Val extends CreateDriverModel>
    implements $CreateDriverModelCopyWith<$Res> {
  _$CreateDriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transmitterId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
    Object? speed = freezed,
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      transmitterId: freezed == transmitterId
          ? _value.transmitterId
          : transmitterId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CreateDriverModelImplCopyWith<$Res>
    implements $CreateDriverModelCopyWith<$Res> {
  factory _$$CreateDriverModelImplCopyWith(_$CreateDriverModelImpl value,
          $Res Function(_$CreateDriverModelImpl) then) =
      __$$CreateDriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transmitter_id') String? transmitterId,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'speed') String? speed,
      @JsonKey(name: 'driver') String? driver});
}

/// @nodoc
class __$$CreateDriverModelImplCopyWithImpl<$Res>
    extends _$CreateDriverModelCopyWithImpl<$Res, _$CreateDriverModelImpl>
    implements _$$CreateDriverModelImplCopyWith<$Res> {
  __$$CreateDriverModelImplCopyWithImpl(_$CreateDriverModelImpl _value,
      $Res Function(_$CreateDriverModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transmitterId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
    Object? speed = freezed,
    Object? driver = freezed,
  }) {
    return _then(_$CreateDriverModelImpl(
      transmitterId: freezed == transmitterId
          ? _value.transmitterId
          : transmitterId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$CreateDriverModelImpl implements _CreateDriverModel {
  const _$CreateDriverModelImpl(
      {@JsonKey(name: 'transmitter_id') this.transmitterId,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'direction') this.direction,
      @JsonKey(name: 'speed') this.speed,
      @JsonKey(name: 'driver') this.driver});

  factory _$CreateDriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDriverModelImplFromJson(json);

  @override
  @JsonKey(name: 'transmitter_id')
  final String? transmitterId;
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
    return 'CreateDriverModel(transmitterId: $transmitterId, latitude: $latitude, longitude: $longitude, direction: $direction, speed: $speed, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDriverModelImpl &&
            (identical(other.transmitterId, transmitterId) ||
                other.transmitterId == transmitterId) &&
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
  int get hashCode => Object.hash(runtimeType, transmitterId, latitude,
      longitude, direction, speed, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDriverModelImplCopyWith<_$CreateDriverModelImpl> get copyWith =>
      __$$CreateDriverModelImplCopyWithImpl<_$CreateDriverModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDriverModelImplToJson(
      this,
    );
  }
}

abstract class _CreateDriverModel implements CreateDriverModel {
  const factory _CreateDriverModel(
      {@JsonKey(name: 'transmitter_id') final String? transmitterId,
      @JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'direction') final String? direction,
      @JsonKey(name: 'speed') final String? speed,
      @JsonKey(name: 'driver') final String? driver}) = _$CreateDriverModelImpl;

  factory _CreateDriverModel.fromJson(Map<String, dynamic> json) =
      _$CreateDriverModelImpl.fromJson;

  @override
  @JsonKey(name: 'transmitter_id')
  String? get transmitterId;
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
  _$$CreateDriverModelImplCopyWith<_$CreateDriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
