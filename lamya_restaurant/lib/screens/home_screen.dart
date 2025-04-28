import 'package:flutter/material.dart';
import 'package:lamya_restaurant/widget/menu_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selected = 'ALL';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar to display the menu title and a search bar
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.green.shade400,
        actions: [],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: 'Search',
              trailing: [
                IconButton(onPressed: () {}, icon: Icon(Icons.tune_rounded)),
              ],
            ), // SearchBar
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            SizedBox(
              height: 45,
              // List of category buttons
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = 'ALL';
                          });
                        },
                        child: Text('ALL'),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = 'PASTAS';
                          });
                        },
                        child: Text('PASTAS'),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = 'PIZZAS';
                          });
                        },
                        child: Text('PIZZAS'),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = 'DRINKS';
                          });
                        },
                        child: Text('DRINKS'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            // Calling MenuCard to display menu items
            Expanded(child: MenuCard(selectedCategory: selected)),
          ],
        ),
      ),
      // Shopping cart button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: OvalBorder(),
        child: Icon(Icons.shopping_basket_rounded),
      ),
    );
  }
}
