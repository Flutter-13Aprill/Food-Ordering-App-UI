import 'package:flutter/material.dart';
import 'package:food_ordering_app/classes/food_class.dart';
import 'package:food_ordering_app/classes/user_class.dart';

class CardWidges2 extends StatelessWidget {
  const CardWidges2({
    super.key,
    required this.user,
    required this.food,
    required this.onFavoriteToggle,
  });
  final Food food;
  final User user;
  final VoidCallback onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.network(
                  food.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120,
                ),
              ),
              Text(
                food.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                food.typeOfCheesy,
                style: TextStyle(fontSize: 16, color: Colors.black45),
              ),
              Text(
                "\$ ${food.price}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 140, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        color: const Color.fromARGB(255, 177, 218, 252),
                        blurRadius: 7,
                        spreadRadius: 5,
                      ),
                    ],
                  ),

                  child: Row(
                    spacing: 8,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(Icons.shopping_bag_outlined, color: Colors.white),
                      Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 21,
          right: 21,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:user.favorite.contains(food)? Colors.red: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: InkWell(
              enableFeedback: true,
              onTap: () {
                user.toggleFavorite(food);
                onFavoriteToggle();
              },
              child: Icon(Icons.favorite, color:user.favorite.contains(food)? Colors.white:Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
