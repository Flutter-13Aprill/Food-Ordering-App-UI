import 'package:flutter/material.dart';

// A card widget to display food item with image, title, price, and action
class FoodCard extends StatelessWidget {
  final String? title;
  final String? imgLink;
  final double? price;
  const FoodCard({super.key, this.title, this.imgLink, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 150, // Fixed width of card
      child: Card(
        margin: EdgeInsets.only(top: 16),
        child: Column(
          spacing: 8, // Space between children
          children: [
            Stack(
              children: [
                // Food image with rounded top corners
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),

                  child: Image.network(
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    "$imgLink",
                  ),
                ),

                // Favorite icon button in top right corner
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[100],
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {}, // Favorite button action
                      icon: Icon(Icons.favorite, size: 18, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),

            Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Cheesy Hettaven 🧀",
              style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
            ),
            Text(
              "\$ $price",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 47,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blueAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12),
                  ),
                ),
                child: Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.shopping_bag_outlined, color: Colors.white),
                    Text("ADD TO CART", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
