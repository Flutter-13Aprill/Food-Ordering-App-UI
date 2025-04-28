import 'package:flutter/material.dart';
import 'package:food_ordring_app/widgets/custom_containr.dart';
import 'package:food_ordring_app/widgets/custom_food_cars.dart';

//the home screen to display 1-search bar 2-Category Chips 3-food cards
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Popular Menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              //search bar
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 25),
              child: SearchBar(
                leading: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.search_rounded),
                ),
                hintText: "Search..",
                hintStyle: const WidgetStatePropertyAll(
                  TextStyle(color: Colors.grey),
                ),
                trailing: const [
                  Padding(padding: EdgeInsets.all(10), child: Icon(Icons.tune)),
                ],
                shadowColor: const WidgetStatePropertyAll(Colors.transparent),
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromARGB(255, 255, 254, 254),
                ),
              ),
            ),
          ),
          Padding(
            // Category Chips here we gust call it an cange the title
            padding: const EdgeInsets.fromLTRB(35, 0, 10, 0),
            child: Row(
              children: [
                CustomContainr(title: "Europian"),
                const SizedBox(height: 10, width: 10),
                CustomContainr(title: "10m"),
                const SizedBox(height: 10, width: 10),
                CustomContainr(title: "Burgers"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            //to list the food cards
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Row(
                  children: const [
                    Expanded(
                      //each car reqaird imagepath title description price
                      child: FoodCard(
                        imagePath: "assets/images/burger-10956.png",
                        title: "Cheese Burger",
                        description: "cheesy Hettaven 🧀",
                        price: "\$ 5.99",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: FoodCard(
                        imagePath:
                            "assets/images/thinly-sliced-pepperoni-is-popular-pizza-topping-american-style-pizzerias-isolated-white-background-still-life__1_-removebg-preview.png",
                        title: "Pizza",
                        description: "cheesy Hettaven 🧀",
                        price: "\$12.45",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Expanded(
                      child: FoodCard(
                        imagePath:
                            "assets/images/[CITYPNG.COM]Fried Chicken Burger PNG Image - 1000x1000.png",
                        title: "Cheese Burger",
                        description: "cheesy Hettaven 🧀",
                        price: "\$ 5.99",
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: FoodCard(
                        imagePath:
                            "assets/images/istockphoto-953810510-612x612-removebg-preview.png",
                        title: "Cheese Burger",
                        description: "cheesy Hettaven 🧀",
                        price: "\$ 5.99",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
