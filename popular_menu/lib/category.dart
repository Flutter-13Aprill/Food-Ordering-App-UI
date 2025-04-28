import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});
//widget display category buttons 
  @override
  Widget build(BuildContext context) {
    return Padding( 
     padding: const EdgeInsets.only(top: 10),//add padding from top
     child: Row( //all the category on row 
        children: [ //button for italy category 
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 50),),//set size for the button 
            child: Text("Italy"),
            onPressed:(){},
                         ),
        SizedBox(width: 13,),// add space between buttons 

          ElevatedButton(//button for Japan category
            style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 50),),
            child: Text("Japan"),
            onPressed:(){},
                        ),
          SizedBox(width: 13,),
                          
          ElevatedButton( //button for Mexico category
            style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 50),),
            child: Text("Mexico"),
            onPressed:(){},
                        ),
                    ]
                ),
                 );
                                    }
                                      }