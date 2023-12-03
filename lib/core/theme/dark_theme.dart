import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

ThemeData darkTheme(){
  return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.cairo().fontFamily,
      textTheme: TextTheme(
        //headline
        displaySmall:TextStyle(fontSize: 22,color: ColorManager.whiteColor,fontWeight: FontWeight.bold),
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