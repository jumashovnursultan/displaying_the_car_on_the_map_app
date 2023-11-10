// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxi_drivers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxiDriversModelImpl _$$TaxiDriversModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaxiDriversModelImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String,
      direction: json['direction'] as String,
      speed: DateTime.parse(json['speed'] as String),
      driver: json['driver'] as String?,
    );

Map<String, dynamic> _$$TaxiDriversModelImplToJson(
        _$TaxiDriversModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'direction': instance.direction,
      'speed': instance.speed.toIso8601String(),
      'driver': instance.driver,
    };
