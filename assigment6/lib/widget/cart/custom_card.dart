import 'package:assigment6/core/text/app_text.dart';
import 'package:assigment6/core/theme/app_palette.dart';
import 'package:assigment6/widget/cart/add_to_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context) {
    var menuMap = AppText.menu.entries.toList();
    return SizedBox(
      height: 600,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 15,
          mainAxisSpacing: 5,
          childAspectRatio: 0.63,
        ),
        itemCount: menuMap.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(menuMap[index].value['image']!),
                      ),
                      Positioned(
                        right: 1,
                        top: 5,
                        child: CircleAvatar(
                          backgroundColor: AppPalette.lightGrey,
                          foregroundColor: AppPalette.greyColor2,
                          child: Icon(CupertinoIcons.heart_fill, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  menuMap[index].key,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppText.subtext,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      "assets/images/cheese.png",
                      height: 15,
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "\$${menuMap[index].value['price']!}",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(height: 5),
                AddToCart(),
              ],
            ),
          );
        },
      ),
    );
  }
}
