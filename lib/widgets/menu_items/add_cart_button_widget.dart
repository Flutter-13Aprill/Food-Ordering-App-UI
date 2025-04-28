import 'package:flutter/material.dart';

class AddCartButtonWidget extends StatelessWidget {
  const AddCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xff0C5EF9),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff0C5EF9).withAlpha(26),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.shopping_basket_outlined, color: Colors.white),
        label: Text('ADD TO CART',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
    );
  }
}
