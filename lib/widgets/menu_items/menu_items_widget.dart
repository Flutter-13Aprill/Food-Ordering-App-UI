import 'package:flutter/material.dart';

// --- Widgets
import 'package:bite_ui/widgets/menu_items/menu_item_widget.dart';

/// [MenuItemsWidget] It's a widget that will display all food in the menu
class MenuItemsWidget extends StatelessWidget {

  const MenuItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(24),
      child: Column(
        spacing: 16,
        children: [
          Row(
            spacing: 24,
            children: [
              MenuItemWidget(nameOfFood: "Beef Burger", famousIngratiate: "molten chess 🧀", price: 5.99,  imagePath: 'lib/assets/images/burger.png',),
              MenuItemWidget(nameOfFood: "Pizza", famousIngratiate: "noble pizza 🍕", price: 12.45,  imagePath: 'lib/assets/images/pizza.png',),
            ],
          ),
          
          Row(
            spacing: 24,
            children: [
              MenuItemWidget(nameOfFood: "Pizza", famousIngratiate: "noble pizza 🍕", price: 12.45,  imagePath: 'lib/assets/images/pizza.png',),
              MenuItemWidget(nameOfFood: "Beef Burger", famousIngratiate: "molten chess 🧀", price: 5.99,  imagePath: 'lib/assets/images/burger.png',),
            ],
          )
        ],
      ),
    );
  }
}