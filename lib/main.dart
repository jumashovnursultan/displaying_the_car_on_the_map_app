import 'package:flutter/material.dart';
import 'package:nursultan_app/data/storage/local_storage.dart';
import 'package:nursultan_app/features/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:nursultan_app/features/sign_in/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  //// register repositories
  // registerDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        title: 'Map App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LocalStorage().token == null
            ? const SignInScreen()
            : const BottomNavigationBarView(),
      ),
    );
  }
}
