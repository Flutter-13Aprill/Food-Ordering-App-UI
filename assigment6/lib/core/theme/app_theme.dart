import 'package:assigment6/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.lightWhite,
    //App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.lightWhite,
      toolbarHeight: 90,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppPalette.blackColor,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      ),
    ),
    //Search Bar Theme
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(AppPalette.lightGrey),
      elevation: WidgetStateProperty.all(0),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      ),
      hintStyle: WidgetStateProperty.all(
        TextStyle(color: AppPalette.greyColor),
      ),
    ),

    //Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppPalette.blueColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.all(13),
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
    //Card Theme
    cardTheme: CardThemeData(
      color: AppPalette.whiteColor,
      shadowColor: AppPalette.blackColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    //Text Theme for Title
    textTheme: TextTheme(
      displayMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      bodySmall: TextStyle(color: AppPalette.whiteColor, fontSize: 15),
      titleSmall: TextStyle(color: AppPalette.greyColor),
    ),
  );
}
