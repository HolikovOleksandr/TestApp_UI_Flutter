import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xFF24CFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF262841);
  static const Color navBarBg = Color(0xFF002D97);
  static const Color subtext = Color(0xFFA6BDF2);
  static const Color blue = Color(0xFF164AC5);
  static const Color yellow = Color(0xFFF3DC09);
  static const Color red = Color(0xFFE50000);
  static const Color pink = Color(0xFFCC0074);
  static const Color ornage = Color(0xFFFF4D17);
  static const Color purple = Color(0xFF8B00D0);
  static const Color black = Color.fromARGB(255, 0, 0, 0);

  static const List<Color> bgGradient = [
    Color(0xFF002D97),
    Color(0xFF1D59F3),
  ];

  static var littleBlueButtonShadow = BoxShadow(
    color: AppColor.black.withOpacity(0.25),
    blurRadius: 3,
    offset: const Offset(1, 1),
  );

  static var circleProgressBarShadow = BoxShadow(
    color: AppColor.black.withOpacity(0.25),
    blurRadius: 4,
    offset: const Offset(0, 4),
  );
}
