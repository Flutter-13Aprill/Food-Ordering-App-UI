import 'package:flutter/material.dart';
import 'package:lamya_restaurant/components/menu_item.dart';
import 'package:lamya_restaurant/models/item_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCard extends StatelessWidget {
  final String
  selectedCategory; // Declares the selected category for menu items
  const MenuCard({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    //Condition to bring the item
    List<MenuItem> categoryItems = [];
    for (var item in itemList) {
      if (item.itemCategory == selectedCategory || selectedCategory == 'ALL') {
        categoryItems.add(item); // Add the item to the filtered list
      }
    }
    // GridView to list the menu items and organize them
    return GridView.builder(
      itemCount: categoryItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final item = categoryItems[index]; // Get the item at the current index
        return GridTile(
          child: Card(
            elevation: 10.0,
            color: Colors.white,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Stack(
                  children: [
                    // Display the image of the menu item
                    Image.network(
                      item.itemImage,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    //Positioned button for 'favorite' icon
                    Positioned(
                      top: 1,
                      right: -10,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Icon(Icons.favorite, size: 12),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8),
                // Display the name of the menu item
                Text(
                  item.itemName,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                // Display the Price of the menu item
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/Riyal.svg',
                      height: 12.0,
                      width: 12.0,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '${item.itemPrice}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Add to the cart button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 11,
                        horizontal: 16,
                      ),
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        // adds rounded corners
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add to the cart',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.shopping_basket_rounded, size: 12),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
