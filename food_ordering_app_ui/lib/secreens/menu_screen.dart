import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_chips.dart';
import '../widgets/food_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      centerTitle: true,
      title: const Text(
       'Popular Menu',
       style: TextStyle(
        fontWeight: FontWeight.w700,
       ),
       ),
       ),
      body: CustomScrollView(
        slivers: [
          //Search Bar
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Search_Bar(),
            ),
          ),

          //Category Chips
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CategoryChips(),
            ),
          ),

          //Food Cards Grid
          //Placing the food card items in a grid.
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  List<Map<String, String>> foods = [
                    {
                      'name': 'Cheese Burger',
                      'price': '5.99',
                      'image': 'assets/pic2/burger2.jpg',
                    },
                    {
                      'name': 'Pizza',
                      'price': '12.45',
                      'image': 'assets/pic2/pizza2.jpg',
                    },
                    {
                      'name': 'Sushi',
                      'price': '7.80',
                      'image': 'assets/pic2/Sushi.png',
                    },
                    {
                      'name': 'Salad',
                      'price': '6.50',
                      'image': 'assets/pic2/salad.png',
                    },
                  ];

                  var food = foods[index];
                  return FoodCard(
                    name: food['name']!,
                    price: food['price']!,
                    imagePath: food['image']!,
                    
                     
                  );
                },
                childCount: 4,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
