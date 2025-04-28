import 'package:flutter/material.dart';

// Main Menu Screen displaying popular food items
class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // List of food categories for filtering (currently static; can later be dynamic)
    final categories = ['Europian', '10m', 'Burgers'];

    // List of food items, each with name, price, and image
    final foodItems = [
      {
        'name': 'Cheese Burger',
        'price': 5.99,
        'image':
            'https://www.recipetineats.com/tachyon/2022/08/Cheeseburger.jpg?resize=900%2C1125&zoom=0.72',
      },
      {
        'name': 'Pizza',
        'price': 12.45,
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXSH5sF5LdtmDfNxiht4k2WWrOr7Ykr5ewkQ&s',
      },
      {
        'name': 'Chicken Burger',
        'price': 5.99,
        'image':
            'https://t3.ftcdn.net/jpg/12/13/13/42/240_F_1213134228_5W8MIimrm6wvhonB9sOAecPeCd4mnvlW.jpg',
      },
      {
        'name': 'Salad',
        'price': 3.99,
        'image':
            'https://media.istockphoto.com/id/1648267946/photo/greek-salad-with-olives-at-white.jpg?s=1024x1024&w=is&k=20&c=wzAoDgyhRTZURn_xZOjrlV8Mp1tu4Q8BzipK9kOt1z0=',
      },
      {
        'name': 'Water',
        'price': 1.0,
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMmkTYJ5t9SU5P1m_ZwOTFPQ4k57FhfniHqQ&s',
      },
      {
        'name': 'Pepsi',
        'price': 1.5,
        'image':
            'https://images.unsplash.com/photo-1531384370597-8590413be50a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcHNpfGVufDB8fDB8fHww',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white, //  white background
      appBar: AppBar(
        title: Text(
          'Popular Menu',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Center-align the title text
        backgroundColor: Colors.white, // Match AppBar color to screen
        elevation: 0, // Flat AppBar with no shadow (clean look)
        toolbarHeight: 90, // Taller AppBar for a more premium design
      ),
      body: Padding(
        padding: EdgeInsets.all(24), // Symmetric padding around page content
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200, // Light grey background for input
                borderRadius: BorderRadius.circular(20), // Soft rounded edges
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey), // Search icon
                  SizedBox(width: 3, height: 55), // Tiny spacing for aesthetics
                  Expanded(
                    child: Text(
                      'Search..', // Placeholder text
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.tune,
                    color: Colors.grey.shade600,
                  ), // Filter button
                ],
              ),
            ),
            SizedBox(height: 16), // Spacing between Search and Categories
            //Category Chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Allow side scroll
              child: Row(
                children:
                    categories.map((category) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 8,
                        ), // Space between chips
                        child: SizedBox(
                          height: 70, // Height of each chip for consistency
                          child: Chip(
                            label: Text(
                              category,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                            backgroundColor: Colors.blue, // Main theme color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                28,
                              ), // Rounded, soft appearance
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
            SizedBox(height: 16), // Spacing between Categories and Grid
            // Food Items Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 cards per row
                  crossAxisSpacing: 12, // Horizontal spacing
                  mainAxisSpacing: 12, // Vertical spacing
                  childAspectRatio: 0.65, // Height to width ratio, taller cards
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final item = foodItems[index];
                  final name = item['name'] as String? ?? '';
                  final price = item['price'] as double? ?? 0.0;
                  final imageUrl = item['image'] as String? ?? '';

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        24,
                      ), // Curved card corners
                    ),
                    elevation: 2, // Slight shadow for card separation
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Image with Favorite Icon
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              child: Image.network(
                                imageUrl,
                                height: 120,
                                width: double.infinity,
                                fit:
                                    BoxFit
                                        .cover, // Fill width without distortion
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        //Food Name
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),

                        //Description (Static)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Cheesy Hetthaven 🧀', // Placeholder description
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        SizedBox(height: 8),
                        // Price
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '\$${price.toStringAsFixed(2)}', // Price formatted with 2 decimal points
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Spacer(), // Push button to bottom
                        //Add to Cart Button
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Theme color
                            minimumSize: Size(
                              double.infinity,
                              50,
                            ), // Full width button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                          ),
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 18,
                            color: Colors.white,
                          ),
                          label: Text(
                            'ADD TO CART',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
