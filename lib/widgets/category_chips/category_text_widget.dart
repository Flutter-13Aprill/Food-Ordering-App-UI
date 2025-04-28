import 'package:flutter/material.dart';

/// [CategoryTextWidget] is a style of the text of category chip
class CategoryTextWidget extends StatelessWidget {

  const CategoryTextWidget({super.key, required this.categoryText});
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return Text(
      categoryText,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
