import 'package:flutter/material.dart';

import 'appcolors.dart';

class AppTheme {
  ///AppTheme
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Gilroy',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(AppColors.primary),
        onPrimary: Color(AppColors.primary),
        secondary: Color(AppColors.primary),
        onSecondary: Color(AppColors.primary),
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
      ),
    );
  }
}
