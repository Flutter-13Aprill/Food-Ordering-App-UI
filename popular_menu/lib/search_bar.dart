import 'package:flutter/material.dart';
//search bar widget 
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, 
      child: SearchBar(
        leading: const Icon(Icons.search),//search icon
        trailing: [Icon(Icons.filter_list)],//filter icon
        hintText: 'Search..',//hint inside search bar 
        backgroundColor:WidgetStateProperty.all(const Color.fromARGB(255, 239, 239, 239)),
        elevation:WidgetStateProperty.all(0.0),//no shadow
        shape:WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),//rounded edges
                                ),),
                      )
                    );
                                     }
                                     }