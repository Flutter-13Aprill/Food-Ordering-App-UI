import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Top AppBar with title
        title: const Text(
          'Popular Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            // Search Bar Section
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search..',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.filter_list),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Category Chips Section
            Wrap(
              spacing: 8.0,
              children: [
                buildCategoryChip('European'),
                buildCategoryChip('10m'),
                buildCategoryChip('Burger'),
              ],
            ),
            const SizedBox(height: 16),
            // Food Items Grid Section
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.65, // Adjusted ratio for better layout
              children: [
                buildFoodCard(
                  image: 'assets/images/chese_burger.jpg',
                  title: 'Cheese Burger',
                  description: 'Cheesy Heftaven',
                  price: 5.99,
                ),
                buildFoodCard(
                  image: 'assets/images/pizza.jpg',
                  title: 'Pizza',
                  description: 'Cheesy Heftaven',
                  price: 12.45,
                ),
                buildFoodCard(
                  image: 'assets/images/burger.jpg',
                  title: 'Chicken Burger',
                  description: 'Crispy Delight',
                  price: 5.99,
                ),
                buildFoodCard(
                  image: 'assets/images/salad.jpg',
                  title: 'Fresh Salad',
                  description: 'Healthy Choice',
                  price: 5.99,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each category chip
  Widget buildCategoryChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 63, 239),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
            color: Color.fromARGB(255, 36, 63, 239), width: 1.5),
      ),
    );
  }

  // Widget to build each food card
  Widget buildFoodCard({
    required String image,
    required String title,
    required String description,
    required double price,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              // Food content inside the card
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Food Image
                      Image.asset(
                        image,
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      // Food Title
                      Text(
                        title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // Food Description
                      Text(
                        description,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      // Food Price
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              // Add to Cart Button
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 36, 63, 239),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.shopping_cart, color: Colors.white, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Favorite Heart Icon Positioned at the top right
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
