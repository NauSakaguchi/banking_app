import 'package:banking_app/view/style/my_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getMyTheme(isDarkMode) {
  final ColorScheme colorScheme =
      MyColorScheme.getMyColorScheme(isDarkMode, false);
  return ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    primaryTextTheme: GoogleFonts.mPlusRounded1cTextTheme()
        .apply(bodyColor: colorScheme.onSurface),
    textTheme: GoogleFonts.mPlusRounded1cTextTheme()
        .apply(bodyColor: colorScheme.onSurface),
  );
}
