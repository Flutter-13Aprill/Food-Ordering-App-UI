import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/widgets/Category/category_container.dart';
import 'package:food_ordering_app_ui/widgets/card/card_container.dart';
import 'package:food_ordering_app_ui/widgets/search_bar.dart';

// The main home screen of the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with centered bold title
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Popular menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      // Body with padding and scrollable content
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: [
            SearchBarWidget(), // Search input
            CategoryContainer(), // Category filter buttons
            FoodCardContainer(), // List of food items
          ],
        ),
      ),
    );
  }
}
