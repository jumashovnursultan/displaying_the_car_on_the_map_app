import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/features/list_of_cars/list_of_cars_screen.dart';
import 'package:nursultan_app/features/map/map_screen.dart';

class BottomNavigationBarView extends HookConsumerWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);

    return Scaffold(
      body: currentIndex.value == 0
          ? const MapScreen()
          : const ListOfCarsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0 && currentIndex.value != 0) {
            currentIndex.value = 0;
          } else if (value == 1 && currentIndex.value != 1) {
            // showDialog(
            //   context: context,
            //   builder: (context) => const CreateDriverAlertDialog(),
            // );
            currentIndex.value = 1;
          } else if (value == 2 && currentIndex.value != 2) {
            currentIndex.value = 2;
          }
        },
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Список машин',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.add),
          //   label: 'Добавить водителя',
          // ),
        ],
      ),
    );
  }
}
