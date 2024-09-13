import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getAppTheme = ThemeData(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: const Color(0xff011030),
    appBarTheme: const AppBarTheme(
      color: Color(0xff020f30),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
