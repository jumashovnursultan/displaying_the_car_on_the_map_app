import 'package:nursultan_app/data/model/taxi_drivers_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nursultan_app/providers/common.dart';

part 'taxi_drivers.g.dart';

@riverpod
Future<List<TaxiDriversModel>> taxiDrivers(TaxiDriversRef ref) async {
  final response = await ref.read(userRepoProvider).fetchDrivers();
  // print('faq response: ${response.result}');

  return response.result ??
      const [
        TaxiDriversModel(
          latitude: '42.869551',
          longitude: '74.617684',
          direction: 'left (направление)',
          speed: '0.0',
          driver: 'Водитель 1',
        ),
        TaxiDriversModel(
          latitude: '42.880244',
          longitude: '74.637940',
          direction: 'left (направление)',
          speed: '0.0',
          driver: 'Водитель 2',
        ),
      ];
}
