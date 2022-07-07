import 'package:flutter/material.dart';
import 'text_theme.dart';

import 'colors/color_pallete.dart';

ThemeData get defaultTheme => ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorPalette.redCoral,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorPalette.redCoral,
        secondary: Colors.white,
      ),
      buttonTheme: ButtonThemeData(buttonColor: ColorPalette.redCoral),
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: ColorPalette.white,
      textTheme: defaultTextTheme,
    );
