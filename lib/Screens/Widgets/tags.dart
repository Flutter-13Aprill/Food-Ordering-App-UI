import 'package:flutter/material.dart';

// This the widgit "Tags" will contain all the tags inatilize and modification for the Restraunt such As "Fast Food, "BreakFast"
class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue.shade700),
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(),
              child: const Text("Europian", style: TextStyle(color: Colors.white)),
            )),
            const SizedBox(width: 8),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue.shade700),
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(),
              child: const Text("Fast Food", style: TextStyle(color: Colors.white)),
            )),
            const SizedBox(width: 8),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue.shade700),
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(),
              child: const Text("BreakFast", style: TextStyle(color: Colors.white)),
            )),
            const SizedBox(width: 8),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue.shade700),
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(),
              child: const Text("Burgers", style: TextStyle(color: Colors.white)),
            )),
            const SizedBox(width: 8),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue.shade700),
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(),
              child: const Text("Pizzas", style: TextStyle(color: Colors.white)),
            )),
      ],
    );
  }
}
