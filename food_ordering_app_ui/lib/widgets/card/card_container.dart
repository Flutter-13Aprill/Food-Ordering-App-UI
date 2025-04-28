import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/widgets/card/food_card.dart';

// Container widget that displays a group of FoodCard widgets
class FoodCardContainer extends StatelessWidget {
  const FoodCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8, // Space between cards
        children: [
          // Individual food cards with title, image, and price
          FoodCard(
            title: "Pizza",
            imgLink:
                "https://static.vecteezy.com/system/resources/previews/047/544/286/large_2x/italian-pizza-on-white-background-photo.jpg",
            price: 12.45,
          ),
          FoodCard(
            title: "Burger",
            imgLink:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXKramVX1c8D8zZS7l6N9-VFK92pUTFS0oQ&s",
            price: 5.99,
          ),
          FoodCard(
            title: "shawrma",
            imgLink:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3T57nb7Zp8sfYTx4dDyIOlgHgVsy1dCWLZw&s",
            price: 3.0,
          ),
          FoodCard(
            title: "Salad",
            imgLink:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR_zLhCxN42gHVv0T2lESgji1vtwVscooAWQ&s",
            price: 8.99,
          ),
        ],
      ),
    );
  }
}
