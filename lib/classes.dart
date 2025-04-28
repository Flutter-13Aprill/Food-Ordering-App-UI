// import the material package
import 'package:flutter/material.dart';
//the class of the object category button
class CategoryButton extends StatelessWidget {
  final String label;
// constarcter
  const CategoryButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
// start with padding for make horizontal space between containers
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      // the container that contain category button content
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        //centering the text
        child: Center(
          // the text of category button
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
//menu items class
class MenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
// constracter
  const MenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // main container and represent the menu card 
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  
      // main column 
      Column(
  mainAxisSize: MainAxisSize.min,
        children: [
          // make space
          const SizedBox(height: 5),
          //stack for the image and the icon
          Stack(clipBehavior: Clip.none,
            children: [
              Image.asset(imagePath, height: 90,width: 100,),
              // controll icon container position
              Positioned(
                top: -10,
                right: -35,
                child: IconButton(
  onPressed: () {},
  //container that contain the icon
  icon: Container(
    width:25 ,
    height:25 ,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 83, 83, 83), 
      shape: BoxShape.circle, 
    ),
    padding: const EdgeInsets.all(8), 
    child:
    //stack for controll the icon position
    Stack(clipBehavior: Clip.none,children: [Positioned(top: -4,
    right:-6 ,child: const Icon(
      Icons.favorite_border,
      color: Color.fromARGB(255, 213, 212, 212),
      size: 20,
    ),)],) 
  ),
),
              ),
            ]),
          Expanded(child: Column(children: [ const SizedBox(height: 5),
          // the title text
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 5),
          //sub title text
           Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 5),
          //price text
         Text(
            price,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        // make space
          const Spacer(),
         //container for the button (add to cart)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: 
            //row for ordering the elemants inside the button
            Row(children: [ const Center(
              child: Padding(padding:EdgeInsets.symmetric(horizontal: 5),child:
              //the icon of cart
              Icon(
      Icons.add_shopping_cart,
      color: Color.fromARGB(255, 213, 212, 212),
      size: 20,
    ) ,) ,
            ),const Center(
              //the button (add to cart)
              child:InkWell(child: 
              //the text of the button
              Text(
                'ADD TO CART',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),) 
            ),],) 
          )],))
         
         
      
  ] ));
  }
}