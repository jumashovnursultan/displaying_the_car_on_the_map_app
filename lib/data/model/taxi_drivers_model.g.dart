// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxi_drivers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxiDriversModelImpl _$$TaxiDriversModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaxiDriversModelImpl(
      id: json['id'] as int?,
      transmitterId: json['transmitter_id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      direction: json['direction'] as String?,
      speed: json['speed'] as String?,
      driver: json['driver'] as int?,
    );

Map<String, dynamic> _$$TaxiDriversModelImplToJson(
        _$TaxiDriversModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transmitter_id': instance.transmitterId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'direction': instance.direction,
      'speed': instance.speed,
      'driver': instance.driver,
    };
