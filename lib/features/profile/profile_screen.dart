import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/features/profile/widgets/custom_container_widget.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     const CircleAvatar(
              //       radius: 50,
              //       backgroundImage: NetworkImage(
              //         'https://images.unsplash.com/photo-1575936123452-b67c3203c357?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
              //       ),
              //     ),
              //     const SizedBox(width: 20),
              //     Column(
              //       children: [
              //         CustomContainerWidget(
              //           icon: const Icon(Icons.collections),
              //           text: 'Загрузить фото',
              //           onTap: () {},
              //         ),
              //         const SizedBox(height: 9),
              //         CustomContainerWidget(
              //           icon: const Icon(Icons.delete),
              //           text: 'Удалить фото',
              //           onTap: () {},
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // fio
              const SizedBox(height: 20),
              const Text(
                'ФИО',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Александр',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'Телефон',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '+7 777 777 77 77',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              // const SizedBox(height: 20),
              // const Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Александр',
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Text(
              //       'Алматы',
              //       style: TextStyle(
              //         fontSize: 16,
              //         color: Colors.grey,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
