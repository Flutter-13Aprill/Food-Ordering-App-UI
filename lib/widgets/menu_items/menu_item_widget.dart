import 'package:flutter/material.dart';

// --- Widgets
import 'package:food_ordering_app_ui/widgets/menu_items/favorite_button_widget.dart';
import 'package:food_ordering_app_ui/widgets/menu_items/add_cart_button_widget.dart';

/// [MenuItemWidget] It's a widget that will display food information, and it has  4 properties
///
/// [imagePath] You need to specify the path of the image
///
/// [nameOfFood] You need to specify the name of the food
///
/// [famousIngratiate]  You need to specify the famous ingratiate  of this food
///
/// [price] You need to specify the price of the food
///
class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.imagePath,
    required this.nameOfFood,
    required this.famousIngratiate,
    required this.price,
  });

  final String imagePath;
  final String nameOfFood;
  final String famousIngratiate;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 352,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.1,
            blurRadius: 1,
            color: Colors.black.withAlpha(26),
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Stack(

        children: [

          // Information of menu item such as image, name, famous ingratiate, price, and add to cart button
          Column(

            children: [
              Image.asset(imagePath, fit: BoxFit.cover, width: 180),

              SizedBox(height: 8),

              Text(
                nameOfFood,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),

              Text(famousIngratiate,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  overflow: TextOverflow.ellipsis,
                  letterSpacing: 0.5
                  
                ),
              ),

              SizedBox(height: 8),

              // here is the price and the dollar  sign
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Baseline(
                    baseline: 24,
                    baselineType: TextBaseline.ideographic,
                    child: Text(
                      '\$',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    price.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                ],
              ),

              SizedBox(height: 8),

              AddCartButtonWidget()

            ],
          ),

          Positioned(right: 1, child: FavoriteButtonWidget()),
        ],
      ),
    );
  }
}
