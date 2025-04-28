import "package:flutter/material.dart";
import "package:fode_ordering_ui/Screen/MenuOrder.dart";

// Entry point of the Flutter application
void main() {
  runApp(const MyApp()); // Launches the app and sets MyApp as the root widget
}
// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor with optional key
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the top-level widget that provides Material Design styling
    return MaterialApp(
      home: MenuScreen(), // The main screen of the app
    );
  }
}
