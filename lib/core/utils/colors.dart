import 'package:flutter/material.dart';

class AppColors {
  static Color secondaryColor = const Color(0xff151924);
  static Color red = const Color(0xffED2E7E);
  static Color grey = const Color(0xff667080);
  static Color greyBold = const Color(0xff828282);
  static Color transparent = Colors.transparent;
  static MaterialColor primaryColor = MaterialColor(0xfff98121, _goldColor);
}

Map<int, Color> _goldColor = {
  50: const Color(0xfff98121).withOpacity(0.1),
  100: const Color(0xfff98121).withOpacity(0.2),
  200: const Color(0xfff98121).withOpacity(0.3),
  300: const Color(0xfff98121).withOpacity(0.4),
  400: const Color(0xfff98121).withOpacity(0.5),
  500: const Color(0xfff98121).withOpacity(0.6),
  600: const Color(0xfff98121).withOpacity(0.7),
  700: const Color(0xfff98121).withOpacity(0.8),
  800: const Color(0xfff98121).withOpacity(0.9),
  900: const Color(0xfff98121),
};
