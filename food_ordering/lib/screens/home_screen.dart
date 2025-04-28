import 'package:flutter/material.dart';
import 'package:food_ordering/widgets/menu_item_card.dart';
import 'package:food_ordering/widgets/filter_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(
          "Popular Menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SearchBar(
                  elevation: WidgetStatePropertyAll(0),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Icon(Icons.search),
                  ),
                  hintText: "Search..",
                  backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
                  trailing: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.asset(
                        "assets/images/Filter.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    FilterButtons(filterBy: "Europian"),

                    SizedBox(width: 16),
                    FilterButtons(filterBy: "10m"),

                    SizedBox(width: 16),

                    FilterButtons(filterBy: "Burgers"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItemCard(
                    itemName: "Cheese Burger",
                    imgName: "Burger",
                    price: 5.99,
                  ),

                  SizedBox(width: 10),

                  MenuItemCard(
                    itemName: "Pizza",
                    imgName: "Pizza",
                    price: 12.45,
                  ),
                ],
              ),

              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  MenuItemCard(
                    itemName: "Ceaser Salad",
                    imgName: "CeaserSalad",
                    price: 4.99,
                  ),
                  SizedBox(width: 10),

                  MenuItemCard(
                    itemName: "Pepsi",
                    imgName: "Pepsi",
                    price: 1.45,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
