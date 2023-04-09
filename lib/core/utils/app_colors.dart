import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static Color primaryColor = HexColor('#343541');
  static Color secondaryColor = HexColor('#444654');

  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;

  static Color onBoardingColor = const Color(0xFF2E2E2E);

  static const MaterialColor primarySwatch = MaterialColor(
    0xFF343541,
    <int, Color>{
      50: Color(0xFF343541),
      100: Color(0xFF343541),
      200: Color(0xFF343541),
      300: Color(0xFF343541),
      400: Color(0xFF343541),
      500: Color(0xFF343541),
      600: Color(0xFF343541),
      700: Color(0xFF343541),
      800: Color(0xFF343541),
      900: Color(0xFF343541),
    },
  );
}
