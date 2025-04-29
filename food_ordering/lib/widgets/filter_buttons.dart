import 'package:flutter/material.dart';

class FilterButtons extends StatelessWidget {
  final String filterBy;
  const FilterButtons({super.key, required this.filterBy});

  // A custom button widget that displays a filter option with a blue background and rounded corners.

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff0c53f9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        child: Text(
          "$filterBy",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
