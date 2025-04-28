// import matrial package
import 'package:flutter/material.dart';
// import classes package
import 'package:food_ordering_app_ui/classes.dart';
//the class of homescreen  
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  //the function that build the scaffold in the screen
  Widget build(BuildContext context) {
    return Scaffold(
      //the bar in the top of applecation
      appBar: AppBar(backgroundColor:const Color.fromARGB(255, 13, 110, 253), title:
      //centering the title of appbar
      Center(child: Text("Popular Menu",style: TextStyle(color: Colors.white,)) )),
      //body of the app and we will start with column
      body: Column(children: [
        //make space between app bar and container
        SizedBox(height:20 ),
        // make hoizontal space for the container
       Padding(padding:EdgeInsets.symmetric(horizontal: 40),child:
       // container of search box
       Container( padding: const EdgeInsets.symmetric(horizontal: 10),decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(30),),child: 
       // centering the elemants inside the container
                Center(child:Row(children: const [
                  // icon of search
                    Icon(Icons.search, color: Colors.grey),
                    // make space between icon and textfield
                    SizedBox(width: 10),
                    // textfield for searching
                    Expanded(child: TextField(decoration: 
                    //placeholder
                    InputDecoration(hintText: 'Search..',border: InputBorder.none,),),),
                    // icon of filtering
                    Icon(Icons.tune, color: Colors.grey),
                  ],
                ) ),)),
                // make space between container and category button
                 SizedBox(height:20),
                  SizedBox(
              height: 40,
              // list view contain the category buttons
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  //the category button
                  CategoryButton(label: 'Europian'),
                  CategoryButton(label: '10m'),
                  CategoryButton(label: 'Burgers'),
                  CategoryButton(label: 'Pies'),
                  CategoryButton(label: 'Drinks'),
                ],
              ),
              //make space after listview
            ),SizedBox(height:20),
            //build gridview for menu cards using expanded
 Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.7,
                  children: const [
                    // menu card objects
                    MenuItem(
                      imagePath: 'assets/images/cheese_pie.png',
                      title: 'Cheese pie',
                      subtitle: 'liquid cheese pie',
                      price: '\$4.99',
                    ),
                    MenuItem(
                      imagePath: 'assets/images/pizza.png',
                      title: 'Pizza',
                      subtitle: 'Vegetable pizza',
                      price: '\$13.45',
                    ),
                    MenuItem(
                      imagePath: 'assets/images/burger.jpg',
                      title: 'Cheese Burger',
                      subtitle: 'chicken burger',
                      price: '\$11.99',
                    ),
                    MenuItem(
                      imagePath: 'assets/images/salad.png',
                      title: 'salad',
                      subtitle: 'Green Salad',
                      price: '\$2.99',
                    ),
                    MenuItem(
                      imagePath: 'assets/images/pepsi.jpg',
                      title: 'pepsi',
                      subtitle: 'cold pepsi',
                      price: '\$1.50',
                    ),
                  ],
                ),
              ),
            ),

 
      
      






      ]) 
    );
  }
}