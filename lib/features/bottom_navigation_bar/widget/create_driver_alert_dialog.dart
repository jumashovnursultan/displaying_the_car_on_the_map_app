import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/data/model/create_driver_model.dart';
import 'package:nursultan_app/data/model/taxi_drivers_model.dart';
import 'package:nursultan_app/features/bottom_navigation_bar/provider/create_driver_alert_dialog.dart';

class CreateDriverAlertDialog extends HookConsumerWidget {
  const CreateDriverAlertDialog({
    super.key,
    required this.model,
  });

  final TaxiDriversModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transmitterIdController =
        useTextEditingController(text: model.transmitterId);
    final latitudeController = useTextEditingController(text: model.latitude);
    final longitudeController = useTextEditingController(text: model.longitude);
    final directionController = useTextEditingController(text: model.direction);
    final speedController = useTextEditingController(text: model.speed);
    final driverController =
        useTextEditingController(text: model.driver?.toString());

    final isLoading = useState(false);

    return AlertDialog(
      icon: const Text(
        'Изменить данные',
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      iconPadding: const EdgeInsets.only(top: 59),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding:
          const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 20),
      actions: [
        TextField(
          controller: transmitterIdController,
          decoration: const InputDecoration(
            labelText: 'ID передатчика',
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: latitudeController,
                decoration: const InputDecoration(
                  labelText: 'Широта',
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: longitudeController,
                decoration: const InputDecoration(
                  labelText: 'Долгота',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextField(
          controller: directionController,
          decoration: const InputDecoration(
            labelText: 'Направление',
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: speedController,
          decoration: const InputDecoration(
            labelText: 'Скорость',
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: driverController,
          decoration: const InputDecoration(
            labelText: 'Driver',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 70,
              vertical: 15,
            ),
          ),
          onPressed: () async {
            if (isLoading.value) return;
            isLoading.value = true;
            final response =
                await ref.read(createDriverProvider.notifier).updateDriver(
                      DriverModel(
                        id: model.id,
                        transmitterId: transmitterIdController.text,
                        latitude: latitudeController.text,
                        longitude: longitudeController.text,
                        direction: directionController.text,
                        speed: speedController.text,
                        driver: driverController.text,
                      ),
                    );

            if (response.isSuccessful) {
              Navigator.pop(context);
            } else {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      "${response.message.toString()} - ${response.statusCode}"),
                ),
              );
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading.value)
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                        // color: Colors.grey,
                        ),
                  ),
                )
              else
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Изменить',
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
