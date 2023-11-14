// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDriverModelImpl _$$CreateDriverModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDriverModelImpl(
      transmitterId: json['transmitter_id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      direction: json['direction'] as String?,
      speed: json['speed'] as String?,
      driver: json['driver'] as String?,
    );

Map<String, dynamic> _$$CreateDriverModelImplToJson(
        _$CreateDriverModelImpl instance) =>
    <String, dynamic>{
      'transmitter_id': instance.transmitterId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'direction': instance.direction,
      'speed': instance.speed,
      'driver': instance.driver,
    };
