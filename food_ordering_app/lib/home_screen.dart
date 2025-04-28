import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
      title: Column(children: [
        SizedBox(width: 30),
        Padding(
          padding: const EdgeInsets.only(top:24.0),
          child: Text("Popular Menu", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,),
                ),
        ),
      ],
      ),
      
      bottom:  PreferredSize(
        preferredSize: Size.fromHeight(95),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left:24.0, right:24,),
            child: Container(
              height:65,
              child: SearchBar(
              leading: Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(Icons.search),
              ),
              hintText: 'Search..',
                      backgroundColor: WidgetStatePropertyAll(Color(0xFFF5F5F5)),
              shadowColor: WidgetStatePropertyAll(Colors.white),
              elevation: WidgetStatePropertyAll(0.0),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)
              ),
              ),
              
                      ),
            ),
          ),
        Positioned(
          top:20,
          right:45,
          child: Icon(CupertinoIcons.slider_horizontal_3)), 
        
        ],)
          ),
          
       ),
       body: SingleChildScrollView(
         child: Column(children: [
          SizedBox(height: 24),
         //circles
         Row(children: [
           SizedBox(width: 24),
           Container(
         width: 120,
         height: 60,
         
         decoration: BoxDecoration(
           color: Color(0xFF005CFF), 
           borderRadius: BorderRadius.circular(50),
         ), 
         child: Center(child: Text("Europian", style: TextStyle(fontSize:18, color: Colors.white, fontWeight: FontWeight.bold,), )),
         ),
         SizedBox(width: 10),
         Container(
         width: 92,
         height: 60,
         decoration: BoxDecoration(
           color: Color(0xFF005CFF), 
           borderRadius: BorderRadius.circular(50),
         ), 
         child: Center(child: Text("10m", style: TextStyle(fontSize:18, color: Colors.white, fontWeight: FontWeight.bold,), )),
         ),
         SizedBox(width: 10),
         Container(
         width: 110,
         height: 60,
         
         decoration: BoxDecoration(
           color: Color(0xFF005CFF), 
           borderRadius: BorderRadius.circular(50),
         ), 
         child: Center(child: Text("Burgers", style: TextStyle(fontSize:18, color: Colors.white, fontWeight: FontWeight.bold,), )),
         ),
         ],),
         
         SizedBox(height: 48),
         
         //contentcards
         Row(children: 
         
         [
            SizedBox(width: 16,),
           Column(
            children: [
          
         Container(
         width: 190,
         height:300,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only( topLeft: Radius.circular(30),  // Radius for the bottom-left corner
               topRight: Radius.circular(30),),
                boxShadow: cardShadow,
         ),
         child:Stack(
           children: [
             
             // Column for Image and Text
             Column(
               children: [
          // The image container
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Image.asset(
              'lib/images/burger.png',
              fit: BoxFit.cover,
            ),
          ),
         
          // Texts underneath the image
          Text("Cheese Burger", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
          Text("Cheesy Hettaven", style: TextStyle(fontSize: 16, color: Colors.grey[500],)),
          Text("5.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
               ],
             ),
             
             // Positioned Icon in the top-right corner
             Positioned(
               top: 10,  // Position from the top
               right: 10,  // Position from the right edge
               child: SizedBox(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.grey[100],
              elevation: 0,
            ),
            child: Icon(Icons.favorite_rounded, size: 24, color: Colors.grey[400]), // Icon inside the button
          ),
               ),
             ),
           ],
         )
         
           
           
           ),
         
         Container(
         width: 190,
         height:80,
         decoration: BoxDecoration(
           color: Color(0xFF005CFF),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(30),  // Radius for the bottom-left corner
               bottomRight: Radius.circular(30), 
           )
         ),
         child: Row(children: [
           SizedBox(width: 24,),
         Icon(Icons.shopping_basket_outlined, color: Colors.white,),
         SizedBox(width: 10,),
         Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18,)),
         
         ],),
         ),
         
         
         ],),
         SizedBox(width: 16,),
         Column(children: [
         Container(
         width: 190,
         height:300,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only( topLeft: Radius.circular(30),  // Radius for the bottom-left corner
               topRight: Radius.circular(30),),
                boxShadow: cardShadow,
         ),
         child:Stack(
           children: [
             // Column for Image and Text
             Column(
               children: [
          // The image container
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Image.asset(
              'lib/images/pizza.png',
              fit: BoxFit.cover,
            ),
          ),
         
          // Texts underneath the image
          Text("Cheese Burger", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
          Text("Cheesy Hettaven", style: TextStyle(fontSize: 16, color: Colors.grey[500],)),
          Text("5.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
               ],
             ),
             
             // Positioned Icon in the top-right corner
             Positioned(
               top: 10,  // Position from the top
               right: 10,  // Position from the right edge
               child: SizedBox(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.grey[100],
              elevation: 0,
            ),
            child: Icon(Icons.favorite_rounded, size: 24,color: Colors.grey[400]), // Icon inside the button
          ),
               ),
             ),
           ],
         )
         
           
           
           ),
         
         Container(
         width: 190,
         height:80,
         decoration: BoxDecoration(
           color: Color(0xFF005CFF),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(30),  // Radius for the bottom-left corner
               bottomRight: Radius.circular(30), 
           )
         ),
         child: Row(children: [
           SizedBox(width: 28,),
         Icon(Icons.shopping_basket_outlined, color: Colors.white,),
         SizedBox(width: 10,),
         Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18,)),
         
         ],)
         ),
         
         
         ],),
         
          
         
         
         ],),
          SizedBox(height: 24),
         
         Row(children: 
         
         [
          
            SizedBox(width: 16,),
           Column(
            
            children: [
          
         Container(
         width: 190,
         height:300,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only( topLeft: Radius.circular(30),  // Radius for the bottom-left corner
               topRight: Radius.circular(30),),
               boxShadow: cardShadow,
         ),
         child:Stack(
           children: [
             
             // Column for Image and Text
             Column(
               children: [
          // The image container
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Image.asset(
              'lib/images/salad.png',
              fit: BoxFit.cover,
            ),
          ),
         
          // Texts underneath the image
          Text("Cheese Burger", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
          Text("Cheesy Hettaven", style: TextStyle(fontSize: 16, color: Colors.grey[500],)),
          Text("5.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
               ],
             ),
             
             // Positioned Icon in the top-right corner
             Positioned(
               top: 10,  // Position from the top
               right: 10,  // Position from the right edge
               child: SizedBox(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.grey[100],
              elevation: 0,
            ),
            child: Icon(Icons.favorite_rounded, size: 24, color: Colors.grey[400]), // Icon inside the button
          ),
               ),
             ),
           ],
         )
         
           
           
           ),
         
         Container(
         width: 190,
         height:80,
         decoration: BoxDecoration(
           color: Color(0xFF005CFF),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(30),  // Radius for the bottom-left corner
               bottomRight: Radius.circular(30), 
           )
         ),
         child: Row(children: [
           SizedBox(width: 28,),
         Icon(Icons.shopping_basket_outlined, color: Colors.white,),
         SizedBox(width: 10,),
         Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18,)),
         
         ],)
         ),
         
         
         ],),
         SizedBox(width: 16,),
         Column(children: [
         Container(
         width: 190,
         height:300,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only( topLeft: Radius.circular(30),  // Radius for the bottom-left corner
               topRight: Radius.circular(30),),
          boxShadow: cardShadow,
         ),
         child:Stack(
           children: [
             // Column for Image and Text
             Column(
               children: [
          // The image container
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            
             
            child: Image.asset(
              'lib/images/cake.png',
              fit: BoxFit.cover,
            ),
          ),
         
          // Texts underneath the image
          Text("Cheese Burger", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
          Text("Cheesy Hettaven", style: TextStyle(fontSize: 16, color: Colors.grey[500],)),
          Text("5.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
               ],
             ),
             
             // Positioned Icon in the top-right corner
             Positioned(
               top: 10,  // Position from the top
               right: 10,  // Position from the right edge
               child: SizedBox(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.zero,

              backgroundColor: Colors.grey[100],
              elevation: 0,
            ),
            child: Icon(Icons.favorite_rounded, size: 24, color: Colors.grey[400]), // Icon inside the button
          ),
               ),
             ),
           ],
         )
         
           
           
           ),
         
         Container(
         width: 190,
         height:80,
         decoration: BoxDecoration(
           color: Color(0xFF005CFF),
           boxShadow: cardShadow,
           
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(30),  // Radius for the bottom-left corner
               bottomRight: Radius.circular(30), 
           )
         ),
         child: Row(children: [
           SizedBox(width: 28,),
         Icon(Icons.shopping_basket_outlined, color: Colors.white,),
         SizedBox(width: 10,),
         Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18,)),
         
         ],)
         ),
         
         
         ],),
         
         
         
         
         ],),
         ],
         
         ),
       ),
    );
    
    
  }
}
final cardShadow = [
  BoxShadow(
    color: Color(0xFFD6D6D6), // Light grey shadow
    offset: Offset(0, 20),
    blurRadius: 40,
    spreadRadius: 0,
  )
];

