import 'package:flutter/material.dart';
import 'package:food_order/widget/custombutton.dart';
import 'package:food_order/widget/customcard.dart';
import 'package:food_order/widget/customsearch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Populer Menue',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomSearch(),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    CustomButton(title: 'Pizza'),
                    CustomButton(title: 'Burger'),
                    CustomButton(title: 'Food'),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: CustomCard(
                          title: 'Veggie Pizza ',
                          subTitle: '"Fresh veggies and creamy cheese." ',
                          imagePath: 'assets/images/pizza5.png',
                          price: '\$ 5.60',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomCard(
                          title: 'Salad',
                          subTitle: 'helthy food',
                          imagePath: 'assets/images/salad.png',
                          price: '\$ 6.0',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: CustomCard(
                          title: 'Pepperoni  Pizza ',
                          subTitle: '"Fresh veggies and creamy cheese." ',
                          imagePath: 'assets/images/pizza6.png',
                          price: '\$ 20.0',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomCard(
                          title: ' Cheese Burger',
                          subTitle: 'cheese ',
                          imagePath: 'assets/images/burger2.png',
                          price: '\$ 11.60',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
