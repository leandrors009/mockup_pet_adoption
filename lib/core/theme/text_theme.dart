import 'package:flutter/material.dart';

import 'colors/color_pallete.dart';

TextTheme get defaultTextTheme => TextTheme(
      // AppBar Texts
      headline1: const TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 12,
        color: Colors.black87.withOpacity(0.78),
      ),

      // Animal Card Text
      headline3: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: Colors.black,
      ),
      subtitle1: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        color: ColorPalette.grey,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),

      // About Pet Text
      subtitle2: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline4: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      button: const TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    );
