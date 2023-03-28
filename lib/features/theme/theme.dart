import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeScreen {
  static const primaryColor = Color(0xff100B20);
  static ThemeData darkMode = ThemeData(
    scaffoldBackgroundColor: primaryColor,
    textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)

  );
}
