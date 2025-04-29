import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          decoration: InputDecoration(
              // filled: true,
              // fillColor: Colors.grey,
              icon: Icon(Icons.search),
              labelText: "Search Bar",
              suffixIcon: Icon(Icons.filter_list_rounded)),
        ),
      ),
   );
  }
}


