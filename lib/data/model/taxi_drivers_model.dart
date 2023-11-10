// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxi_drivers_model.freezed.dart';
part 'taxi_drivers_model.g.dart';

@freezed
class TaxiDriversModel with _$TaxiDriversModel {
  const factory TaxiDriversModel({
    @JsonKey(name: 'latitude') final String? latitude,
    @JsonKey(name: 'longitude') required final String longitude,
    @JsonKey(name: 'direction') required final String direction,
    @JsonKey(name: 'speed') required final DateTime speed,
    @JsonKey(name: 'driver') final String? driver,
  }) = _TaxiDriversModel;

  factory TaxiDriversModel.fromJson(Map<String, dynamic> json) =>
      _$TaxiDriversModelFromJson(json);
}
