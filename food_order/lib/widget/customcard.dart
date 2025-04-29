import 'package:flutter/material.dart';

// A reusable card widget that displays food image, name, description, price, and add-to-cart button
class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final String price;
  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            spreadRadius: 4,
            offset: Offset(0, 10),
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Flexible(
              child: Stack(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(imagePath, fit: BoxFit.fill),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: -2,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[200],
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(height: 6),
            Text(
              subTitle,
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 6),
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.shopping_basket, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
