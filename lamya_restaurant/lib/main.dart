import 'package:flutter/material.dart';
import 'package:lamya_restaurant/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: //desaighn gide
          ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade900),
      ),
      home: HomeScreen(),
    );
  }
}
