import 'package:flutter/material.dart';
import 'package:restraunt_app/Screens/Widgets/food_card.dart';
import 'package:restraunt_app/Screens/Widgets/tags.dart';

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
              textAlign: TextAlign.start,
            ),
            bottom: PreferredSize(
                preferredSize: const Size(10, 90),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                  child: SearchBar(
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search_sharp),
                    ),
                    hintText: "Search..",
                    trailing: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.tune_outlined)))
                    ],
                  ),
                ))),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const SizedBox(
                    height: 32,
                    child:
                        Tags()), //Here we used a "SizedBox" to display the "ListView" "Tags"
                const SizedBox(height: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ListView(
                      children: const [
                        // Using "Wrap" here make sure that "FoodCard"s will adapt to the screen and will display as many items in one row as it's provided with the "spacing": space between each card horizantly and "runSpacing": space beween each card verticaly.
                        Wrap(spacing: 26, runSpacing: 16, children: [
                          FoodCard(
                              foodTitle: "Cheese Burger",
                              foodSub: "Five Guys",
                              foodPrice: "25.99",
                              foodImage:
                                  "https://images.unsplash.com/photo-1572802419224-296b0aeee0d9?q=80&w=3515&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          FoodCard(
                            foodTitle: "Pizza",
                            foodSub: "No Crust",
                            foodPrice: "35.89",
                            foodImage:
                                "https://images.pexels.com/photos/5907903/pexels-photo-5907903.jpeg?auto=compress&cs=tinysrgb&w=800",
                          ),
                          FoodCard(
                            foodTitle: "Pancake",
                            foodSub: "Maple Syrup",
                            foodPrice: "21.50",
                            foodImage:
                                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=800",
                          ),
                          FoodCard(
                            foodTitle: "Shawerma",
                            foodSub: "Best Food Ever",
                            foodPrice: "14.99",
                            foodImage:
                                "https://images.pexels.com/photos/18177337/pexels-photo-18177337/free-photo-of-rolls-and-potatoes-served-in-a-restaurant.jpeg?auto=compress&cs=tinysrgb&w=800",
                          )
                        ])
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
