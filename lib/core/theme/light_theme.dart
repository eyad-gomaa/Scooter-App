import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scooter_app/core/resources/color_manager.dart';

ThemeData lightTheme(){
  return ThemeData(
    brightness: Brightness.light,
      fontFamily: GoogleFonts.cairo().fontFamily,
      textTheme: TextTheme(
      //headline
      displaySmall:TextStyle(fontSize: 22,color: ColorManager.blackColor,fontWeight: FontWeight.bold),
      displayMedium:TextStyle(fontSize: 25,color: ColorManager.blackColor,fontWeight: FontWeight.bold),
      displayLarge:TextStyle(fontSize: 28,color: ColorManager.blackColor,fontWeight: FontWeight.bold),
      //title
      titleSmall:TextStyle(fontSize: 11,color: ColorManager.blackColor,fontWeight: FontWeight.w500),
      titleMedium:TextStyle(fontSize: 15,color: ColorManager.blackColor,fontWeight: FontWeight.w500),
      titleLarge:TextStyle(fontSize: 17,color: ColorManager.blackColor,fontWeight: FontWeight.w500),

      labelSmall: const TextStyle(),
      labelMedium: TextStyle(fontSize: 17,color: ColorManager.whiteColor,fontWeight: FontWeight.w500),
      labelLarge: const TextStyle(),

      bodySmall: const TextStyle(),
      bodyMedium: TextStyle(fontSize: 17,color: ColorManager.greyColor,fontWeight: FontWeight.normal),
      bodyLarge: const TextStyle(),

  )
  );
}