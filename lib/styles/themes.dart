import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData get darkTheme => ThemeData(
      scaffoldBackgroundColor: const Color(0xFF333333),
      textTheme: const TextTheme(
        headline1: TextStyle(color: Color(0xFFe6e6e6)),
        headline2: TextStyle(color: Color(0xFFe6e6e6)),
        headline3: TextStyle(color: Color(0xFFe6e6e6)),
        bodyText1: TextStyle(color: Color(0xFFe6e6e6)),
        subtitle1: TextStyle(color: Color(0xFFe6e6e6)),
      ),
      cardColor: const Color(0xFF4d4d4d),
      backgroundColor: const Color(0xFF333333),
      iconTheme: const IconThemeData(
        color: Color(0xFFe6e6e6),
        opacity: 7.0,
      ),
    );

ThemeData get normalTheme => ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      primaryColor: const Color(0xFFb366ff),
      primaryColorLight: const Color(0xFF8c1aff),
      primaryColorDark: const Color(0xFF6600cc),
      textTheme: const TextTheme(
        headline1: TextStyle(color: Color(0xFF333333)),
        bodyText1: TextStyle(color: Color(0xFF333333)),
        subtitle1: TextStyle(color: Color(0xFF333333)),
        headline2: TextStyle(color: Color(0xFF333333)),
        headline3: TextStyle(color: Color(0xFFe6e6e6)),
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF6600cc),
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFF6600cc)
        ),
      ),
      cardColor: const Color(0xFF8c8c8c),
      backgroundColor: const Color(0xFFFFFFFF),
    );

enum Themes {
  dark, red
}
