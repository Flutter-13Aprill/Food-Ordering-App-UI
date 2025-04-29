import 'package:flutter/material.dart';

// This Class is the "FoodCard" here we Create a "Container" to contain all the menu card widgits such as : "FoodImage", "FoodName", "FoodPrice".
class FoodCard extends StatelessWidget {
  // This constructor is used to make sure that when we call "FoodCard" we can just call it with it's attributes instead of creating it every time
  const FoodCard(
      {super.key,
      this.foodTitle,
      this.foodSub,
      this.foodImage,
      this.foodPrice});

  final String? foodTitle;
  final String? foodSub;
  final String? foodPrice;
  final String? foodImage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        // This the main "Container"
        decoration: BoxDecoration(
          
          boxShadow: kElevationToShadow[4],
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
        ),
        width: 160,
        height: 320,
        child: Column(
          // Here we used Column to display items verticaly to each others
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              // "ClipRRcet is used to cut the corners of the widgit it's Assigned to in this case its the "foodImage"
              borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(16), topEnd: Radius.circular(16)),
              child: Image.network(
                "$foodImage",
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            ListTile( // "ListTile" is used to benifit from "title" and "subtitle"
                title: Center(
                    child: Text(
                  "$foodTitle",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
                subtitle: Center(child: Text("$foodSub"))),
            Text(
              "\$ $foodPrice",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            ClipRRect(  // "ClipRRcet is used to cut the corners of the widgit it's Assigned to in this case its the "ADD TO CART" section of the container.
                borderRadius: const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(16),
                    bottomEnd: Radius.circular(16)),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 50,
                      color: Colors.blue.shade700,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "ADD TO CART",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ))
          ],
        ),
      ),
      Positioned( // "Positioned" is used with Stack to enable displaying and interacting with widgits over others in this case for the "Favorite Button"
          top: 5,
          right: 5.5,
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: Colors.grey,
            ),
          )),
    ]);
  }
}
