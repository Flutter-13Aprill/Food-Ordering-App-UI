import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {

  const FavoriteButtonWidget({super.key});

  @override
  State<FavoriteButtonWidget> createState() => FavoriteButtonWidgetState();

}

class FavoriteButtonWidgetState extends State<FavoriteButtonWidget>{
  
  // isFavorite by default it's false and by this the icon color will be gray otherwise red
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    

    return Container(
      margin: EdgeInsets.only(right: 8,top: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF9F9F9)
        
      ),
      child: IconButton(

        highlightColor: Colors.transparent,
        onPressed:(){

          // If isFavorite is true make it false
          // If isFavorite is false make it true
          setState(() {
            isFavorite = !isFavorite;
          });
        }, 
        icon: isFavorite ? Icon(Icons.favorite_outlined, color: Colors.red,) : Icon(Icons.favorite, color: Colors.grey,)),
    );
  }
}