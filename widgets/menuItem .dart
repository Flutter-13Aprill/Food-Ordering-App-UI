import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String imageUrl;// URL for the item's image
  final String title;// Title of the menu item
  final String description;// Description of the menu item
  final String price;// Price of the menu item
//constructor initialize the values of attributes 
  const MenuItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter, // Aligns content at the top center
      margin: EdgeInsets.all(16), // Margin around the container
      width: 160,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,// Light background color
        borderRadius: BorderRadius.circular(16),// Rounded corners
      ),
      child: Stack(// Using Stack for overlapping widgets
        children: [
          Column(
            children: [
              Image.network(
                imageUrl,// Network image for the item
                width: 150,//size of image
                height: 150,//height of image
                alignment: Alignment.center,// Center alignment
              ),
              Text(// title of the item
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Title style
              ),
              Text(
                description,// Description of the item
                style: TextStyle(color: const Color.fromARGB(255, 93, 91, 91)), // Description style
              ),
              Text(// Price of the item
                price,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 190,/// Fixed width and height for the button container
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),// Rounded corners
                  color: Colors.blueAccent, // Background color for the button
                ),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  label: Text(// Cart icon
                    "Add to Cart",
                    style: TextStyle(fontSize: 15, color: Colors.white),// Label style
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,// Background color for the button
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),// Button padding
                  ),
                ),
              ),
            ],
          ),
          Positioned(// Positioned widget for the favorite icon
            right: 8,// Position from the right and top
            top: 8,
            child: IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.red), // Favorite icon
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
