import 'package:assigment6/core/text/app_text.dart';
import 'package:assigment6/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppPalette.blueColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_shopping_cart, color: AppPalette.whiteColor),
          SizedBox(width: 8),
          Text(AppText.cart, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
