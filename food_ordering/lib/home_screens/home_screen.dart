import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> foodItems = [
  {
    'name': 'Cheese Burger',
    'image': 'https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
    'price': 5.99,
  },
  {
    'name': 'Pizza',
    'image': 'https://images.unsplash.com/photo-1594007654729-e39c39ef45b9?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
    'price': 12.45,
  },
  {
    'name': 'Chicken Burger',
    'image': 'https://images.unsplash.com/photo-1626093929793-cfc61e1d21f0?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
    'price': 5.99,
  },
  {
    'name': 'Salad',
    'image': 'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60',
    'price': 5.99,
  },
];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Popular Menu',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Search Bar
              Container( // container that contain search bar
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 16), // for every elent in side searchbar
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 241, 241), // color of search bar
                  borderRadius: BorderRadius.circular(35), // to be circle
                ),
                child: Row( // this row containt elemints inside search bar
                  children: [
                    const Icon(Icons.search, size: 32),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(Icons.filter_list, size: 32),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Chips
              Row( //three shapse under search bar
                mainAxisAlignment:
                    MainAxisAlignment.start, // To spread them nicely
                spacing: 16,
                children: [
                  // First shape (Europin)
                  Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 51, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Europin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // Second shape (10m)
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 51, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        '10m',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // Third shape (Burger)
                  Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 51, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Burger',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Food Cards
              Expanded( // containing cards...and card has compleat
                child: GridView.builder(
                  itemCount: foodItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) {
                    final item = foodItems[index];
                    return FoodCard(
                      name: item['name'],
                      imageUrl: item['image'],
                      price: item['price'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override 
  Widget build(BuildContext context) { 
    return Chip(
      label: Text(label),
      backgroundColor: Color.fromARGB(255, 44, 51, 255),
      labelStyle: const TextStyle(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}

class FoodCard extends StatelessWidget { // this will display info of item in menu
  final String name;
  final String imageUrl;
  final double price;

  const FoodCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // color of the card
        borderRadius: BorderRadius.circular(16),
        
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(143, 58, 55, 255), // shadow of the card
            spreadRadius: 0.001,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ]
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect( // to dispaly img from internet
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned( // likes icon
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Color.fromARGB(255, 255, 50, 50),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            'Cheesy Hetthaven 🧀',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 44, 51, 255),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            ),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart, color: Colors.white),
              label: const Text('ADD TO CART', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}