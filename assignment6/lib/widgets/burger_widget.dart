// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BurgerContainer extends StatelessWidget {
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const BurgerContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), //circular border shadow
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 187, 187, 187),
            blurRadius: 4,
            offset: Offset(4, 10), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            //to organize the image with the icon
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/isolated-delicious-hamburger-cartoon_1308-134213.jpg?semt=ais_hybrid&w=740",
                height: 140,
                width: 140,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 252, 252),

                    borderRadius: BorderRadius.circular(100),
                  ),

                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: const Color.fromARGB(255, 203, 203, 203),
                  ),
                ),
              ),
            ],
          ),

          Text(
            "Cheese Burger",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Padding(padding: EdgeInsets.all(4)),

          Row(
            //to orginize the text description with the icon
            children: [
              Text(
                "        Melty Cheesy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 147, 146, 146),
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),

              Icon(
                Icons.food_bank,
                size: 20,
                color: const Color.fromARGB(255, 184, 197, 4),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(4)),

          Text(
            "\$9.5\n",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Spacer(),

          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Color.fromARGB(255, 43, 93, 240),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    //to make the button vertical
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
              ),

              onPressed: () {},

              child: Row(
                children: [
                  Icon(Icons.shopping_cart, size: 20, color: Colors.white),
                  Padding(padding: EdgeInsets.all(4)),
                  Text("Add to cart", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
