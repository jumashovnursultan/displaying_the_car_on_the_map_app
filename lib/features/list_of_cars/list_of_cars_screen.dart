import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/features/bottom_navigation_bar/widget/create_driver_alert_dialog.dart';
import 'package:nursultan_app/providers/taxi_drivers.dart';

class ListOfCarsScreen extends StatefulHookConsumerWidget {
  const ListOfCarsScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ListOfCarsScreenState();
}

class _ListOfCarsScreenState extends ConsumerState<ListOfCarsScreen>
    with AutomaticKeepAliveClientMixin<ListOfCarsScreen> {
  @override
  Widget build(BuildContext context) {
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
                  title: Text(taxiDriver.transmitterId?.toString() ?? ''),
                  subtitle: Text(taxiDriver.direction ?? ''),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CreateDriverAlertDialog(
                        model: taxiDriver,
                      ),
                    );
                  },
                );
              },
            );
          }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
