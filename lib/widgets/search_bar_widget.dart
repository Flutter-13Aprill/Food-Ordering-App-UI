import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(24),
      ),
      child: ListTile(
        leading: Icon(Icons.search_sharp),
        title: Text('Search..'),
        trailing: Icon(Icons.filter_alt_outlined),
      ),
    );
  }
}
