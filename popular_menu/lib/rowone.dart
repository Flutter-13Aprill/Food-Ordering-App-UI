import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';//import font_awesome icons
// widget for the first row of products 
class Rowone extends StatelessWidget {
  const Rowone ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(top: 15),//top padding 
    child: Row( 
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 246, 243, 243),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow:[
                    //light shadows around container 
                    BoxShadow(
                      blurRadius:5.0,
                      offset: Offset(0, 4),
                             ),
                    BoxShadow(
                      color: Color.fromARGB(255, 239, 239, 239),
                      offset: Offset(-4,0),
                             ),
                    BoxShadow(
                      color: Color.fromARGB(255, 239, 239, 239),
                      offset: Offset(4,0),
                             ), 
                             ],),
               child: Column(//column to image and favorite icon button but in stack 
                  children: [
                    Stack(
                      children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child : Image(
                                image: AssetImage("images/cler2.jpg"),
                                height: 200,
                                width: 600,
                                fit: BoxFit.fill,
                                         ),
                                    ),
                          IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.favorite_border_outlined),
                                color:Color.fromRGBO(81, 74, 70, 1),)
                                ]
                           ),
                    Text("Éclair",style:TextStyle(fontSize: 20, ),),//desert name and icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" Berry-filled éclair "),
                        Icon(FontAwesomeIcons.cakeCandles,size: 10,)
                                ],),
                    SizedBox(height:5 ,),
                    Text("20.00\$", style:TextStyle(fontSize: 12,),),//prise 
                    TextButton.icon(//add to cart button
                      onPressed: (){},
                      icon: Icon(Icons.add_shopping_cart),
                      label: Text("Add To Cart",style: TextStyle(fontSize: 14,))
                                    )
                        ],)
                  ,)
                  ,),
        SizedBox(width: 16,),
        Expanded(
          child: Container(
             alignment: Alignment.center,
             decoration: BoxDecoration(
                 color:const Color.fromARGB(255, 246, 243, 243),
                 borderRadius: BorderRadius.circular(16),
                 boxShadow:[
                  BoxShadow(
                    blurRadius:5.0,
                    offset: Offset(0, 3),
                           ),
                  BoxShadow(
                    color: Color.fromARGB(255, 239, 239, 239),
                    offset: Offset(-3,0),
                            ),
                  BoxShadow(
                    color: Color.fromARGB(255, 239, 239, 239),
                    offset: Offset(3,0),
                            ),
                            ], ),
              child: Column(
                 children: [
                    Stack( children:[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child:Image(
                          image: AssetImage("images/macron.jpg"),
                          height: 200,
                          width: 600,
                          fit: BoxFit.cover,),
                              ),
                      IconButton(
                        onPressed: (){},
                         icon: Icon(Icons.favorite_border_outlined),
                         color:Color.fromRGBO(81, 74, 70, 1),
                         )
                          ]),
                    Text("Macaron",style: TextStyle(fontSize: 20,)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(" Berry Macaron "), 
                          Icon(FontAwesomeIcons.cakeCandles,size: 10,)
                      ],),
                    SizedBox(height:5 ,),
                    Text("18.00\$",style: TextStyle(fontSize: 12,)),
                    TextButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.add_shopping_cart),
                      label: Text("Add To Cart",style: TextStyle(fontSize: 14,) )
                                   )
                           ],),
              ),
            ),
        ]),
    );
  }
}   