import 'package:flutter/material.dart';
import 'secreens/home_secreen.dart';
import 'secreens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering',
      home: const HomeScreen(),
      routes: {
        '/menu': (context) => const MenuScreen(),
      },
    );
  }
}
