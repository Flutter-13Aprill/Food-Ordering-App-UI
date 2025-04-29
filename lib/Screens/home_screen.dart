import 'package:flutter/material.dart';
import 'package:project2/CustomWidgets/category_chips.dart';
import 'package:project2/CustomWidgets/menu_list.dart';
import 'package:project2/CustomWidgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Popular Menu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            CustomSearchBar(),
            const SizedBox(height: 16),
            CategoryChips(),
            const SizedBox(height: 16),
            Expanded(child: MenuList()),
          ],
        ),
      ),
    );
  }
}
