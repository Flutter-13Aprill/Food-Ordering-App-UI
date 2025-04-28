import 'package:flutter/material.dart';

// -- Widgets
import 'package:bite_ui/widgets/category_chips/category_text_widget.dart';

// [CategoryContainerWidget] It's a container of category chip
class CategoryContainerWidget extends StatelessWidget {
  
  const CategoryContainerWidget({super.key, required this.categoryText});
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff0C5EF9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: CategoryTextWidget(categoryText: categoryText),
    );
  }
}
