import 'package:flutter/material.dart';

// A reusable search bar widget with a leading search icon and trailing settings icon
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40, // Fixed height for the search bar

        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SearchBar(
          leading: Icon(Icons.search), // Search icon on the left
          hintText: "Search ..", // Placeholder text
          trailing: [
            IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          ], // Icon on the right
        ),
      ),
    );
  }
}
