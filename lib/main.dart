import 'package:flutter/material.dart';
import 'DescriptionScreen.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DescriptionScreen.routeName: (context) => const DescriptionScreen(),
      },
    );
  }
}