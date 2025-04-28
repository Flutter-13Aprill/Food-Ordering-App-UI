import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // first identify the appbar
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Popular menu'))),

      // state the SafeArea
      body: SafeArea(
        //padding to make it look nicer
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          // I used ListView here so if more items added it would be fine and can scroll down
          child: ListView(
            children: [
              //column for each line of elements
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 16,
                children: [
                  //container that holds the searchbar as a text field and adding icons for the filter and search
                  Container(
                    child: Row(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex: 1, child: Icon(Icons.search)),
                        Expanded(
                          flex: 5,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: Icon(Icons.tune)),
                      ],
                    ),
                  ),

                  //this container that holds the filter by type of dish
                  Container(
                    child: Row(
                      spacing: 16,
                      children: [
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Europian'),
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('10m'),
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Burgers'),
                        ),
                      ],
                    ),
                  ),

                  //this container for the cards and the pictures it will hold every elements here
                  Container(

                  // Wrap for the Row elements so that can go to the next line after 2 food card so each column contains only 2 cards
                    child: Wrap(
                      children: [
                        //here where each card identified and add the pictures and the buttons for it 
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/Chicken.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Chicken Burger',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '35 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/salad.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Salad',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '30 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/taco.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Taco Box',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '150 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/beef.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Beef Burger',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '55 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/pizza.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Pizza',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '75 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "lib/pages/image/steak.jpg",
                                        width: 150,
                                      ),
                                      Text(
                                        'Grilled steak',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '90 SR',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextButton.icon(
                                        label: Text(
                                          'Add to cart',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          minimumSize: Size(150, 30),
                                        ),

                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 100,
                                    top: 30,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0, 0),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.favorite,
                                        color: const Color.fromARGB(
                                          213,
                                          161,
                                          158,
                                          158,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
