import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

ThemeData darkTheme(){
  return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.cairo().fontFamily,
      // Text Theme
      textTheme: TextTheme(
        //headline
        displaySmall:TextStyle(fontSize: 20,color: ColorManager.whiteColor,fontWeight: FontWeight.bold),
        displayMedium:TextStyle(fontSize: 25,color: ColorManager.whiteColor,fontWeight: FontWeight.bold),
        displayLarge:TextStyle(fontSize: 28,color: ColorManager.whiteColor,fontWeight: FontWeight.bold),
        //title
        titleSmall:TextStyle(fontSize: 11,color: ColorManager.whiteColor,fontWeight: FontWeight.w500),
        titleMedium:TextStyle(fontSize: 15,color: ColorManager.whiteColor,fontWeight: FontWeight.w500),
        titleLarge:TextStyle(fontSize: 17,color: ColorManager.whiteColor,fontWeight: FontWeight.w500),

        labelSmall: const TextStyle(),
        labelMedium: TextStyle(fontSize: 17,color: ColorManager.whiteColor,fontWeight: FontWeight.w500),
        labelLarge: const TextStyle(),

        bodySmall: const TextStyle(),
        bodyMedium: TextStyle(fontSize: 17,color: ColorManager.greyColor,fontWeight: FontWeight.normal),
        bodyLarge: const TextStyle(),

      ),
      // color Scheme
      colorScheme: const ColorScheme.dark(
        background: Color(0xff252526),
        primary: Color(0xff2d2d30),
        secondary: Color(0xff3e3e42),
      ),
      // scaffold Background Color
      scaffoldBackgroundColor: const Color(0xff252526),
      // appBar Theme
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20,color: ColorManager.whiteColor,fontWeight: FontWeight.bold),
          actionsIconTheme: IconThemeData(
              color: ColorManager.whiteColor
          ),
        iconTheme: IconThemeData(
            color: ColorManager.whiteColor
        ),
      ),
      // input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      )
  );

}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: ColorManager.whiteColor));
}