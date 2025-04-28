import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/widgets/Category/category_button.dart';

// A container that displays category buttons
class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18), // Horizontal margin
      child: Wrap(
        spacing: 5, // Space between buttons
        children: [
          // Categorys
          CategoryButton(title: "Europian"),
          CategoryButton(title: "10m"),
          CategoryButton(title: "Burgers"),
        ],
      ),
    );
  }
}
