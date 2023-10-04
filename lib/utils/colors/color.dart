// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const red = Color(0xFFf40009);
  static const lightGray = Color(0xFFb4b4b4);
  static const darkGray = Color(0xFF2c2c2c);
  static const white = Color(0xFFFFFFFF);
  static const gradientAddStory = LinearGradient(
    begin: Alignment.topCenter,
    colors: [
      Color(0xff000000),
      Color(0xff323232),
    ],
  );
}
