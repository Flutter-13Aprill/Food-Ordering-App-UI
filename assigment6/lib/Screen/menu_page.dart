import 'package:assigment6/core/text/app_text.dart';
import 'package:assigment6/widget/cart/custom_card.dart';
import 'package:assigment6/widget/custom_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppText.appBarText)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SearchBar(
                  hintText: AppText.hintSearch,
                  leading: Icon(CupertinoIcons.search),
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.slider_horizontal_3),
                    ),
                  ],
                ),
                CustomChip(),
                CustomCard(),

                SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
