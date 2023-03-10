import 'package:flutter/material.dart';

class AppThemes {
  static const sunwatNavyBlue = Color(0xFF0B0F1A),
      sunwatDarkBlue = Color(0xFF0C1D31),
      sunwatBlue = Color(0xFF0F2743),
      sunwatNewBlue = Color(0xFF002E5D),
      sunwatDarkGrey = Color(0xFFABABAB),
      sunwatGold = Color(0xFFFF8200),
      sunwatGrey = Color(0xFFC6C6C8),
      sunwatError = Color(0xFFDC2626),
      sunwatScaffold = Color(0xFFFFFFFF),
      sunwatPeach = Color(0xFFF8D5B8),
      sunwatMint = Color(0xff94b7bb),
      neutral600 = Color(0xFF4B5768);

  static get textTheme => const TextTheme(
        /// heading with no spacing ///
        headline1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          fontFamily: "JosefinSans",
        ),

        /// Heading with spacing ///
        headline2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.6,
          fontFamily: "JosefinSans",
        ),

        ///   Light Heading 12 w300 ///

        headline3: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 12,
          fontFamily: "JosefinSans",
        ),

        /// Body 1 with size 12 ///

        bodyText1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
            fontFamily: "JosefinSans"),

        /// Body 2 with size 10 ///

        bodyText2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 10,
            fontFamily: "JosefinSans"),

        // bodyLarge:

        /// Caption Text 10 w300 ///
        caption: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 10,
          fontFamily: "JosefinSans",
        ),

        /// If text with size 12 is bold use this ///
        /// Bold text of w500 with size 12

        subtitle1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          fontFamily: "JosefinSans",
        ),

        /// Used for those texts to which color has to be given ///

        subtitle2: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: "JosefinSans",
        ),

        /// Button Text ///

        button: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.6,
          fontFamily: "JosefinSans",
        ),
      );
  static final ColorScheme lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: sunwatBlue,
    secondary: sunwatNavyBlue,
    error: sunwatError,
    background: Colors.grey.shade100,
    surface: Colors.white,
  );

  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: lightColorScheme,
    textTheme: textTheme,
  ).copyWith(appBarTheme: const AppBarTheme(backgroundColor: Colors.blue));
}
