import 'package:nursultan_app/data/model/taxi_drivers_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nursultan_app/providers/common.dart';

part 'taxi_drivers.g.dart';

@riverpod
Future<List<TaxiDriversModel>> taxiDrivers(TaxiDriversRef ref) async {
  final response = await ref.read(userRepoProvider).fetchDrivers();
  print('faq response: $response');

  return response.result ?? [];
}
