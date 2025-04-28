import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});// Constructor for the Category widget

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,// Distributes space evenly between children

      children: [
        Container( // Consistent top padding
          padding: EdgeInsets.only(top: 24),
          width: 100,
          height: 65,
          child: Text(
            "Europian ",// Category name
            style: TextStyle(
              color: Colors.white, // Text color
              fontWeight: FontWeight.bold,// Makes the text bold
              fontSize: 20,// Font size
            ),
            textAlign: TextAlign.center,// Centers text within the container
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 84, 147, 241),
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 24),
            width: 80,
          height: 60,
          child: Text(
            "10m  ",//title 
            style: TextStyle(
              color: Colors.white,// Text color
              fontWeight: FontWeight.bold,// Makes the text bold
              fontSize: 20,// Font size
            ),
            textAlign: TextAlign.center,// Centers text within the container
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 84, 147, 241),
            borderRadius: BorderRadius.circular(34),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 24),// Consistent top padding
            width: 100,
          height: 70,
          child: Text(
            "Burgers  ",//title 
            style: TextStyle(
              color: Colors.white,//background color
              fontWeight: FontWeight.bold,//Makes the text bold
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 84, 147, 241),
            borderRadius: BorderRadius.circular(38),
          ),
        ),
      ],
    );
  }
}
