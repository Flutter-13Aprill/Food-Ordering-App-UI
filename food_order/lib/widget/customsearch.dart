import 'package:flutter/material.dart';

// A custom search bar widget with search icon, text input, and sort icon
class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xffF3F5F6),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 205, 204, 204),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
        ],
      ),
    );
  }
}
