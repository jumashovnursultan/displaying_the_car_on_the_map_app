// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxi_drivers_model.freezed.dart';
part 'taxi_drivers_model.g.dart';

@freezed
class TaxiDriversModel with _$TaxiDriversModel {
  const factory TaxiDriversModel({
    @JsonKey(name: 'latitude') final String? latitude,
    @JsonKey(name: 'longitude') final String? longitude,
    @JsonKey(name: 'direction') final String? direction,
    @JsonKey(name: 'speed') final String? speed,
    @JsonKey(name: 'driver') final String? driver,
  }) = _TaxiDriversModel;

  factory TaxiDriversModel.fromJson(Map<String, dynamic> json) =>
      _$TaxiDriversModelFromJson(json);
}
