import 'package:flutter/material.dart';

class AppColors {
  static final Color mainColor = Color(0xff6155CC);
  static final Color secondColor = Color(0xff8F67E8);

  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);
  
  static final Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.secondColor,
      AppColors.mainColor,
    ],
  );
}