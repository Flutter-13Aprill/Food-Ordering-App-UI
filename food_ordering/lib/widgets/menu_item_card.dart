import 'package:flutter/material.dart';

class MenuItemCard extends StatefulWidget {
  final String itemName;
  final String imgName;
  final double price;
  const MenuItemCard({
    super.key,
    required this.itemName,
    required this.imgName,
    required this.price,
  });

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                alignment: Alignment.center,
                height: 120,
                child: Image.asset("assets/images/${widget.imgName}.png"),
              ),
              Positioned(
                top: 16,
                right: 8,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[50],
                  ),
                  child: InkWell(
                    onTap:
                        () => setState(() {
                          clicked = !clicked;
                        }),
                    child: Icon(
                      size: 20,
                      Icons.favorite,
                      color: clicked ? Colors.red : Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "${widget.itemName}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "cheesy Hattaven",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: 2),
              Image.asset(
                "assets/images/CheeseIcon.png",
                height: 15,
                width: 15,
              ),
            ],
          ),

          SizedBox(height: 2),
          Text(
            "\$ ${widget.price}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          // SizedBox(height: 2),
          Expanded(
            child: Container(
              // height: 70,
              // width: 200,
              decoration: BoxDecoration(
                color: Color(0xff0c53f9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 6),
                  ),
                ],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    "ADD TO CART",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
