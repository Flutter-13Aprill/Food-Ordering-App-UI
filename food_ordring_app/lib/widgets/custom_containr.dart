import 'package:flutter/material.dart';

//this file contain the Category Chips
class CustomContainr extends StatelessWidget {
  //here i need to chane the taitle for diffrent category
  final String title;
  const CustomContainr({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(30),
          color: Colors.blueAccent,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
