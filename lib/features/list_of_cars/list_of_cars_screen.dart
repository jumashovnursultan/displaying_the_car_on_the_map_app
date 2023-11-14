import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/providers/taxi_drivers.dart';

class ListOfCarsScreen extends HookConsumerWidget {
  const ListOfCarsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taxiDriversState = ref.watch(taxiDriversProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Список машин'),
      ),
      body: taxiDriversState.when(
          error: (_, __) => const SizedBox(),
          loading: () => const SizedBox(),
          data: (data) {
            if (data.isEmpty) {
              return const Text('Нет данных');
            }
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final taxiDriver = data[index];
                return ListTile(
                  title: Text(taxiDriver.driver?.toString() ?? ''),
                  subtitle: Text(taxiDriver.direction ?? ''),
                );
              },
            );
          }),
    );
  }
}
