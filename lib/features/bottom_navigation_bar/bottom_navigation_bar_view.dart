import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/features/map/map_screen.dart';
import 'package:nursultan_app/features/profile/profile_screen.dart';

class BottomNavigationBarView extends HookConsumerWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);

    return Scaffold(
      body: currentIndex.value == 0 ? const MapScreen() : const ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0 && currentIndex.value != 0) {
            currentIndex.value = 0;
          } else if (value == 1 && currentIndex.value != 1) {
            currentIndex.value = 1;
          }
        },
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
