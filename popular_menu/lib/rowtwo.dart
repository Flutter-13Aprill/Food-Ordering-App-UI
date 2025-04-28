import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rowtwo extends StatelessWidget {
  const Rowtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row( children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                   color:const Color.fromARGB(255, 246, 243, 243),
                   borderRadius: BorderRadius.circular(16),
                   boxShadow:[
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
                child: Column(children:[
                      Stack( children:[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child : Image(
                          image: AssetImage("images/malfe.jpg"),
                          height: 200,
                          width: 600,
                          fit: BoxFit.fill,),
                          ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border_outlined),
                          color:Color.fromRGBO(81, 74, 70, 1),
                                   )
                                    ]),
                      Text("Mille-feuille", style:TextStyle( fontSize: 20,), ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(" Millefoglie Classica "),
                           Icon(FontAwesomeIcons.cakeCandles,size: 10,)
                         ],),
                      SizedBox(height:5 ,),
                      Text("22.00\$", style:TextStyle( fontSize: 12, ),),
                      TextButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text("Add To Cart",style: TextStyle(fontSize: 14,) )
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
                             ],),
                child: Column(children:[
                    Stack( children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child:Image(
                          image: AssetImage("images/teramesu.jpg"),
                          height: 200,
                          width: 600,
                          fit: BoxFit.cover,),
                              ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border_outlined),
                        color:Color.fromRGBO(81, 74, 70, 1),
                         )]
                        ),
                    Text("Tiramisu",style: TextStyle( fontSize: 20, )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Text(" Dolce Tiramisu "), 
                    Icon(FontAwesomeIcons.cakeCandles,size: 10,)
                                 ],),
                SizedBox(height:5 ,),
                Text("25.00\$",style: TextStyle(fontSize: 12,)),
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