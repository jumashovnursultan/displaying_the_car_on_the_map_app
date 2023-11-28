import 'package:nursultan_app/data/model/taxi_drivers_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'taxi_drivers.g.dart';

@riverpod
Future<List<TaxiDriversModel>> taxiDrivers(TaxiDriversRef ref) async {
  // final response = await ref.read(userRepoProvider).fetchDrivers();
  // print('faq response: $response');
  return
      // response.result ??
      [
    const TaxiDriversModel(
      latitude: '42.862934',
      longitude: '74.573738',
      direction: '20',
      speed: '20',
      driver: 1,
    ),
    const TaxiDriversModel(
      latitude: '42.863456',
      longitude: '74.594715',
      direction: '180',
      speed: '20',
      driver: 2,
    ),
    const TaxiDriversModel(
      latitude: '42.860700',
      longitude: '74.618188',
      direction: '360',
      speed: '20',
      driver: 3,
    ),
  ];
}
