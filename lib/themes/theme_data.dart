import 'package:flutter/material.dart';

class themeStyle {
  static final Color lightPrimary = Color(0xFFB7935F);
  static final Color darkPrimary = Color(0xFF141A2E);
  static final Color darkSecondry = Color(0xFFFACC1D);
  static const bool isDark = true;
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimary,
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightPrimary,
      onSecondary: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),

    textTheme: TextTheme(
        displayMedium: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: "inter"
        ),
        displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: "almesseri"
        ),
        bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            fontFamily: "amiri"
        ),
        bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: "inter"
        ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontFamily: "inter",
        fontWeight: FontWeight.w500,
        fontSize: 17
      ),
      bodySmall:
      TextStyle(
          color: Colors.black,
          fontFamily: "inter",
          fontWeight: FontWeight.w500,
          fontSize: 20
      ),
    ),
    cardTheme: CardThemeData(color: Colors.white),
  );
  static final ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      displayMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 20,
        fontFamily: "inter",
      ),
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: "almesseri",
      ),
      bodyMedium: TextStyle(
        color: darkSecondry,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        fontFamily: "amiri",
      ),
      bodyLarge: TextStyle(
        color: darkSecondry,
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: "inter",
      ),
        displaySmall: TextStyle(
            color: Colors.white,
            fontFamily: "inter",
            fontWeight: FontWeight.w500,
            fontSize: 17
        ),
      bodySmall:
      TextStyle(
          color: darkSecondry,
          fontFamily: "inter",
          fontWeight: FontWeight.w500,
          fontSize: 20
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimary,
      primary: darkPrimary,
      onPrimary: Colors.white,
      secondary: darkSecondry,
      onSecondary: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondry,
      unselectedItemColor: Colors.white,
    ),
    cardTheme: CardThemeData(color: darkPrimary),
  );
}
