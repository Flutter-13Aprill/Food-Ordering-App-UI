import 'package:flutter/material.dart';
import 'package:foodapp/widgets/MenuItem%20.dart';
import 'package:foodapp/widgets/category.dart';
  
// HomeScreen class, a StatelessWidget to display the main menu

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});// Constructor for HomeScreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(// Scaffold provides the basic structure of the app
      appBar: AppBar(
        titleSpacing: 110,// Adjusts spacing for the title
        title: Text(
          "Popular Menu ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(// Ensures content is not obscured by system UI
        child: ListView(
          children: [
               Padding(// Adds padding around the container
              padding: const EdgeInsets.all(24.0),
              child: Container(
                //margin: EdgeInsets.only(bottom: 8),
                alignment: Alignment(0, 0), // Center alignment
                width: 230,
                height: 50,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),// Rounded corners
                   color: const Color.fromARGB(255, 222, 224, 225),// Background color
                ),
                child: SearchBar(
                  leading: Icon(Icons.search),// Leading icon for the search bar
                  hintText: "Search",// Placeholder text
                  trailing: [// Implement functionality for this button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune),
                ),
                  ],
                ), 
              ),
            ),
           
            Category(),
             Row( // First row for menu items
              children: [
               
                   MenuItem(// info for the item
                    imageUrl:// Image URL for Cheese Burger
                        "https://www.certifiedangusbeef.com/_next/image?url=https%3A%2F%2Fappetizing-cactus-7139e93734.media.strapiapp.com%2FClassic_Smashed_Burger_111c4bfdb7.jpeg&w=1200&q=75",
                    title: "Cheese Burger",// Title for the menu item
                    description: "Cheesy Hettaven 🧀",// Description of the item
                    price: "5.5\$",
                  
                ),
               MenuItem(
                    imageUrl:// Image URL
                        "https://www.certifiedangusbeef.com/_next/image?url=https%3A%2F%2Fappetizing-cactus-7139e93734.media.strapiapp.com%2FClassic_Smashed_Burger_111c4bfdb7.jpeg&w=1200&q=75",
                    title: "Pizza",// Title for the menu item
                    description: "Cheesy Hettavon 🧀",// Description of the item
                    price: "12.45 \$",//price of meal
                  ),
                
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MenuItem(
                    imageUrl:// Image URL
                        "https://www.certifiedangusbeef.com/_next/image?url=https%3A%2F%2Fappetizing-cactus-7139e93734.media.strapiapp.com%2FClassic_Smashed_Burger_111c4bfdb7.jpeg&w=1200&q=75",
                    title: "Cheese Burger",
                    description: "Cheesy Hettaven 🧀",// Description of the item
                    price: "5.5\$", //price of meal
                  ),
                ),
                Expanded(
                  child: MenuItem(
                    imageUrl:
                        "https://mummum.dk/wp-content/uploads/2022/03/IMG_9895-min-2048x1726.jpg",
                    title: "salat",// Title for the menu item
                    description: "Cheesy Hettavon 🧀",// Description of the item
                    price: "12.45 \$",//price of meal
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
