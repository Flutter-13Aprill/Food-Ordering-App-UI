import 'package:flutter/material.dart';

// -- Widgets
import 'package:bite_ui/widgets/category_chips/category_container_widget.dart';

/// [CategoryChipsWidget] It's a widget that will display all category chips
class CategoryChipsWidget extends StatelessWidget {
  const CategoryChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 24),

      child: Row(

        spacing: 16,

        children: [

          CategoryContainerWidget(categoryText: 'European'),

          CategoryContainerWidget(categoryText: '10m'),

          CategoryContainerWidget(categoryText: 'Burger')
        ],
      ),
    );
  }
}
