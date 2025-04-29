import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});


//Displaying a set of categories in a horizontal bar that the user can scroll through.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Chip(label:Text('Burger',
          style: TextStyle(color: Colors.blue),
          ),
          ),
          SizedBox(width: 8,),
          Chip(label: Text('pizza',
          style: TextStyle(color: Colors.blue),
          ),
          ),
          SizedBox(width: 8,),
          Chip(label: Text('Sushi',
          style: TextStyle(color: Colors.blue),
          ),
          ),
          
          SizedBox(width: 8,),
          Chip(label: Text('Salad',
          style: TextStyle(color: Colors.blue),
          ),
          ),
        ],
      ),
    );
  }
}