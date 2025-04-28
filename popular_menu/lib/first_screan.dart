import 'package:flutter/material.dart';
import 'package:popular_menu/rowone.dart';
import 'package:popular_menu/rowtwo.dart';
import 'package:popular_menu/category.dart';
import 'package:popular_menu/search_bar.dart';
//the first screan display menu
class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Menu"),//add title
        centerTitle: true,//center the title in app bar
                   ),
      
    
      body: Padding(
       padding: EdgeInsets.all(16.0),//add padding around the body content
       child: ListView(
         children: [
            Search(), //search bar widget
            Category(),//categoy buttons widget
            Rowone(),// first row of desert
            Rowtwo(),//second row of desert
                   ],
                     ), 
                    ),
                     );
                                      }
                                          }
