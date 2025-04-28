import 'package:flutter/material.dart';

class CategorieWidget extends StatelessWidget {
  const CategorieWidget({super.key,required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,

      child: Center(
        child: Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 1, 134, 243),
          ),
          height: 40,
          child: Text(
            category,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
