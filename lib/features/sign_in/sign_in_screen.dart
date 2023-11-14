import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nursultan_app/features/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:nursultan_app/features/sign_up/sign_up_screen.dart';
import 'package:nursultan_app/utils/slide_right_route.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Войти'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Номер телефона',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Пароль',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  SlideRoute(
                    slideTo: SlideTo.top,
                    screen: const BottomNavigationBarView(),
                  ),
                );
              },
              child: const Text('Войти'),
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       SlideRoute(
            //         screen: const SignUpScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text('Нет аккаунта? Зарегистрироваться'),
            // ),
          ],
        ),
      ),
    );
  }
}
