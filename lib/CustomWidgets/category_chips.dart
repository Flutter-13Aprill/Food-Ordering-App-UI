import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  final List<String> categories = ['European', '10m', 'Burgers'];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = index == selectedCategory;
          return ChoiceChip(
            label: Text(
              categories[index],
              style: const TextStyle(color: Colors.white),
            ),
            selected: isSelected,
            onSelected: (_) {
              setState(() {
                selectedCategory = index;
              });
            },
            selectedColor: Colors.blue,
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          );
        },
      ),
    );
  }
}
