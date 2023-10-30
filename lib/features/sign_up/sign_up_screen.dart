import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fullNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                labelText: 'ФИО',
              ),
            ),
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
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Повторите пароль',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print(fullNameController.text);
                print(phoneNumberController.text);
                print(passwordController.text);
              },
              child: const Text('Зарегистрироваться'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Уже есть аккаунт? Войти'),
            )
          ],
        ),
      ),
    );
  }
}
