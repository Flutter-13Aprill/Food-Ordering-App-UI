import 'package:flutter/material.dart';

// -- Widgets
import 'package:bite_ui/widgets/category_chips/category_chips_widget.dart';
import 'package:bite_ui/widgets/menu_items/menu_items_widget.dart';
import 'package:bite_ui/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(
          'Popular Menu',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(

        children: [

          SizedBox(height: 24),

          // Search bar widget
          SearchBarWidget(),
          
          SizedBox(height: 24),

          // Category Chips
          CategoryChipsWidget(),

          // Items widget
          MenuItemsWidget(),
        ],

      ),
    );
  }
}
