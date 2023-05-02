import 'package:flutter/material.dart';

class MyColorScheme {
  static ColorScheme fromLightTheme() {
    return ColorScheme(
      brightness: Brightness.light,
      // background
      background: const Color(0xFFF3F3F2),
      onBackground: const Color(0x190F08).withOpacity(0.73),
      // surface
      surface: const Color(0xFFFFFFFF),
      onSurface: const Color(0xFF190F08),
      onSurfaceVariant: const Color(0x190F08).withOpacity(0.60),
      inverseSurface: const Color(0x000000).withOpacity(0.4),
      onInverseSurface: const Color(0xFFFFFFFF),
      // primary
      primary: const Color(0xFFFF7919),
      onPrimary: const Color(0xFFFFFFFF),
      onPrimaryContainer: const Color(0x190F08).withOpacity(0.1),
      primaryContainer: const Color(0xFFFFF3EB),
      // secondary
      secondary: const Color(0xFFF3F3F2),
      onSecondary: const Color(0xFFFF2B0D),
      secondaryContainer: const Color(0x190F08).withOpacity(0.31),
      onSecondaryContainer: const Color(0xFF00E345),
      // tertiary
      tertiary: const Color(0xFFE8E7E7),
      onTertiary: const Color(0xFF0D6BFF),
      tertiaryContainer: const Color(0x190F08).withOpacity(0.31),
      onTertiaryContainer: const Color(0xFFFFDF00),
      // error
      error: const Color(0xFFE31201),
      onError: const Color(0xFFE31201),
      errorContainer: const Color(0xFFFFF5F5),
      // outline
      outline: const Color(0xFFFFFFFF),
    );
  }

  static ColorScheme fromDarkTheme() {
    return ColorScheme(
      brightness: Brightness.dark,
      // background
      background: const Color(0xFF190F08),
      onBackground: const Color(0xFFFFFF).withOpacity(0.7),
      // surface
      surface: const Color(0xFF251B15),
      onSurface: const Color(0xFFFFFFFF),
      onSurfaceVariant: const Color(0xFFFFFF).withOpacity(0.51),
      inverseSurface: const Color(0x000000).withOpacity(0.6),
      onInverseSurface: const Color(0xFFFFFFFF),
      // primary
      primary: const Color(0xFFFF7919),
      onPrimary: const Color(0xFFFFFFFF),
      onPrimaryContainer: const Color(0xFFFFFF).withOpacity(0.23),
      primaryContainer: const Color(0xFF302721),
      // secondary
      secondary: const Color(0xFF302721),
      onSecondary: const Color(0xFFFF2B0D),
      secondaryContainer: const Color(0xFFFFFF).withOpacity(0.23),
      onSecondaryContainer: const Color(0xFF00E345),
      // tertiary
      tertiary: const Color(0xFF3A312C),
      onTertiary: const Color(0xFF0D6BFF),
      tertiaryContainer: const Color(0xFFFFFF).withOpacity(0.3),
      onTertiaryContainer: const Color(0xFFFFDF00),
      // error
      error: const Color(0xFFE31201),
      onError: const Color(0xFFFF5938),
      errorContainer: const Color(0xFF302721),
      // outline
      outline: const Color(0xFF251B15),
    );
  }

  static ColorScheme fromTestLightTheme() {
    return ColorScheme(
      brightness: Brightness.light,
      // background
      background: Colors.pink,
      onBackground: Colors.red.withOpacity(0.7),
      // surface
      surface: Colors.pinkAccent,
      onSurface: Colors.red,
      onSurfaceVariant: Colors.red.withOpacity(0.51),
      inverseSurface: Colors.blue.withOpacity(0.6),
      onInverseSurface: Colors.red,
      // primary
      primary: const Color(0xFFFF7919),
      onPrimary: Colors.red,
      primaryContainer: Colors.red.withOpacity(0.05),
      // secondary
      secondary: Colors.red.withOpacity(0.05),
      onSecondary: const Color(0xFFFF2B0D),
      secondaryContainer: Colors.red.withOpacity(0.23),
      onSecondaryContainer: const Color(0xFF00E345),
      // tertiary
      tertiary: Colors.red.withOpacity(0.1),
      onTertiary: const Color(0xFF0D6BFF),
      onTertiaryContainer: const Color(0xFFFFDF00),
      // error
      error: const Color(0xFFE31201),
      onError: const Color(0xFFE31201),
      errorContainer: Colors.red.withOpacity(0.05),
      // outline
      outline: Colors.pinkAccent,
    );
  }

  static ColorScheme fromTestDarkTheme() {
    return ColorScheme(
      brightness: Brightness.light,
      // background
      background: Colors.lightBlue,
      onBackground: Colors.red.withOpacity(0.7),
      // surface
      surface: Colors.lightBlueAccent,
      onSurface: Colors.blue,
      onSurfaceVariant: Colors.blue.withOpacity(0.51),
      inverseSurface: Colors.red.withOpacity(0.6),
      onInverseSurface: Colors.blue,
      // primary
      primary: const Color(0xFFFF7919),
      onPrimary: Colors.blue,
      primaryContainer: Colors.blue.withOpacity(0.05),
      // secondary
      secondary: Colors.blue.withOpacity(0.05),
      onSecondary: const Color(0xFFFF2B0D),
      secondaryContainer: Colors.blue.withOpacity(0.23),
      onSecondaryContainer: const Color(0xFF00E345),
      // tertiary
      tertiary: Colors.blue.withOpacity(0.1),
      onTertiary: const Color(0xFF0D6BFF),
      onTertiaryContainer: const Color(0xFFFFDF00),
      // error
      error: const Color(0xFFE31201),
      onError: const Color(0xFFE31201),
      errorContainer: Colors.blue.withOpacity(0.05),
      // outline
      outline: Colors.lightBlueAccent,
    );
  }

  static ColorScheme getMyColorScheme(bool isDarkMode, bool isTest) {
    ColorScheme myColorScheme;
    if (isDarkMode) {
      myColorScheme = MyColorScheme.fromDarkTheme();
    } else {
      myColorScheme = MyColorScheme.fromLightTheme();
    }

    if (isTest) {
      if (isDarkMode) {
        myColorScheme = MyColorScheme.fromTestDarkTheme();
      } else {
        myColorScheme = MyColorScheme.fromTestLightTheme();
      }
    }

    return myColorScheme;
  }
}
