// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_driver_model.freezed.dart';
part 'create_driver_model.g.dart';

@freezed
class CreateDriverModel with _$CreateDriverModel {
  const factory CreateDriverModel({
    @JsonKey(name: 'transmitter_id') final String? transmitterId,
    @JsonKey(name: 'latitude') final String? latitude,
    @JsonKey(name: 'longitude') final String? longitude,
    @JsonKey(name: 'direction') final String? direction,
    @JsonKey(name: 'speed') final String? speed,
    @JsonKey(name: 'driver') final String? driver,
  }) = _CreateDriverModel;

  factory CreateDriverModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDriverModelFromJson(json);
}
