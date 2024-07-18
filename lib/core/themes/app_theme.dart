import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/color_palette.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorPalette.backgroundColor,
    appBarTheme:
        const AppBarTheme(backgroundColor: ColorPalette.backgroundColor),
  );
}
