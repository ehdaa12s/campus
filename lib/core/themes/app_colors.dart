import 'package:flutter/material.dart';

class AppColors {
  /// primary500
  static const Color primary = Color(0xFFF82548);
  static const Color primary100 = Color(0xFFffd2d7);
  static const Color primary200 = Color(0xFFffa5ae);
  static const Color primary300 = Color(0xFFff7786);
  static const Color primary400 = Color(0xFFff4a5d);
  static const Color primary600 = Color(0xFFf7001a);
  static const Color primary700 = Color(0xFFd20016);
  static const Color primary800 = Color(0xFFad0012);
  static const Color primary900 = Color(0xFF88000e);
  static Color primary50 = const Color(0xFFff1d35).withOpacity(0.5);
  static Color primary40 = const Color(0xFFff1d35).withOpacity(0.4);
  static Color primary30 = const Color(0xFFff1d35).withOpacity(0.3);
  static Color primary20 = const Color(0xFFff1d35).withOpacity(0.2);
  static Color primary10 = const Color(0xFFff1d35).withOpacity(0.1);

  static const Color white = Color(0xFFFFFFFF);
  static const Color gray1000 = Color(0xFF333333);
  static const Color gray900 = Color(0xFF4a4a4a);
  static const Color gray800 = Color(0xFF606060);
  static const Color gray700 = Color(0xFF777777);
  static const Color gray600 = Color(0xFF8e8e8e);
  static const Color gray500 = Color(0xFFa4a4a4);
  static const Color gray400 = Color(0xFFbbbbbb);
  static const Color gray300 = Color(0xFFd2d2d2);
  static const Color gray200 = Color(0xFFe8e8e8);

  static const Color secondary100 = Color(0xFFfff7d5);
  static const Color secondary200 = Color(0xFFffefaa);
  static const Color secondary300 = Color(0xFFffe780);
  static const Color secondary400 = Color(0xFFffdf55);
  static const Color secondary500 = Color(0xFFffd72a);
  static const Color secondary600 = Color(0xFFffcf00);
  static const Color secondary700 = Color(0xFFd9b000);
  static const Color secondary800 = Color(0xFFb39100);
  static const Color secondary900 = Color(0xFF8c7200);
  static const Color secondary1000 = Color(0xFF665300);

  static const Color yellow100 = Color(0xFFffdb43);
  static const Color yellow200 = Color(0xFFdfb400);
  static Color yellow10 = yellow100.withOpacity(0.1);

  static const Color green100 = Color(0xFF84ebb4);
  static const Color green200 = Color(0xFF1fc16b);
  static Color green10 = green200.withOpacity(0.1);

  static const Color red100 = Color(0xFFFB3748);
  static const Color red200 = Color(0xFFd00416);
  static Color red10 = red100.withOpacity(0.1);

  static const Color black = Color(0xFF090909);

  static const MaterialColor themeColor =
      MaterialColor(0xFFF82548, <int, Color>{
    50: Color(0xFFF82548),
    100: Color(0xFFF82548),
    200: Color(0xFFF82548),
    300: Color(0xFFF82548),
    400: Color(0xFFF82548),
    500: Color(0xFFF82548),
    600: Color(0xFFF82548),
    700: Color(0xFFF82548),
    800: Color(0xFFF82548),
    900: Color(0xFFF82548),
  });
}
