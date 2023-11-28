// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_driver_model.freezed.dart';
part 'create_driver_model.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'transmitter_id') final String? transmitterId,
    @JsonKey(name: 'latitude') final String? latitude,
    @JsonKey(name: 'longitude') final String? longitude,
    @JsonKey(name: 'direction') final String? direction,
    @JsonKey(name: 'speed') final String? speed,
    @JsonKey(name: 'driver') final String? driver,
  }) = _CreateDriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}
