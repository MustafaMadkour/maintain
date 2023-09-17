import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

ThemeData enTheme = ThemeData(
  fontFamily: "Roboto",
  colorScheme: const ColorScheme.light(
    primary: AppColor.secondaryColor,
    secondary: AppColor.primaryColor,
    background: AppColor.backgroundColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      // fontSize: 17,
    ),
  ),
  primarySwatch: AppColor.primaryMaterialColor,
);

ThemeData arTheme = ThemeData(
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColor.black,
      fontFamily: "ArefRuqaa",
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      color: AppColor.black,
      fontFamily: "ArefRuqaa",
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontFamily: "Lateef",
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  primarySwatch: AppColor.primaryMaterialColor,
);
