import 'package:flutter/material.dart';

//Class represents a single menu item with its details
class MenuItem extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final int itemPrice;
  final String itemCategory;

  // Constructor to initialize the item details
  const MenuItem({
    super.key,
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    required this.itemCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
