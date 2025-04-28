import 'package:flutter/material.dart';

// A reusable category button widget
class CategoryButton extends StatelessWidget {
  final String? title; // The text displayed on the button
  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 10, // Minimum button width
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)), // Rounded shape
      ),
      color: Colors.blueAccent[700], // Button background color
      onPressed: () {}, // Button tap action (currently empty)
      child: Text(
        "$title", // Display button title
        style: TextStyle(color: Colors.white),
      ), // Text color
    );
  }
}
