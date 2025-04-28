import 'package:assignment6/widgets/burger_widget.dart';
import 'package:assignment6/widgets/fries_widget.dart';
import 'package:assignment6/widgets/pizza_widget.dart';
import 'package:assignment6/widgets/salad_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80, //to resizr the app bar
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text("Popular Menu", style: TextStyle()),
      ),

      body: ListView(
        padding: const EdgeInsets.all(24), //to offset from the app bar

        children: [
          SearchBar(
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 255, 254, 254),
            ),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            trailing: [IconButton(onPressed: () {}, icon: Icon(Icons.tune))],
            hintText: "Search..",
          ),

          SizedBox(height: 20), //to offset from the buttons

          Row(
            children: [
              ElevatedButton(
                //button1
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 43, 93, 240),
                ),

                child: Text(
                  'Europian',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.all(8)),
              //------------------------------------
              ElevatedButton(
                //button2
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 43, 93, 240),
                ),
                child: Text(
                  '10m',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.all(8)),

              //-------------------------------------
              ElevatedButton(
                //button3
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 43, 93, 240),
                ),
                child: Text(
                  'Burgers',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 10),

          Row(
            // to orgnize the containers
            children: [
              BurgerWidget(
                child: Text(''),
              ), //create an instance of the burger wedget
              Spacer(),
              PizzaWidget(
                child: Text(' '),
              ), //create an instance of the pizza wedget
            ],
          ),

          SizedBox(height: 16),

          //------------------------------------------------
          Row(
            // to orgnize the containers
            children: [
              FriesWidget(
                child: Text(' '),
              ), //create an instance of the fries wedget
              Spacer(),
              SaladWidget(
                child: Text(' '),
              ), ////create an instance of the salad wedget
            ],
          ),
        ],
      ),
    );
  }
}
