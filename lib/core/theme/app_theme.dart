import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme = ThemeData(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: const Color(0xff011030),
    appBarTheme: const AppBarTheme(
      color: Color(0xff020f30),
    ),
  );
}
