import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      primarySwatch: Colors.green,
      primaryColor: accentPrimary,
      colorScheme: const ColorScheme.light(
        primary: accentPrimary,
        secondary: accentSecondary,
        surface: highlightNeutral,
        onSurface: highlightSoft,
        onPrimary: Colors.black,
        onSecondary: backgroundColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ), // Titles
        bodyLarge: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ), // body text
        bodyMedium: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ), // secondary text
      ),
      fontFamily: 'Concert One',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: surfaceColor,
          backgroundColor: accentPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: accentPrimary,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: darkBlackgoundColor,
      primarySwatch: Colors.green,
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBlackgoundColor,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      colorScheme: const ColorScheme.dark(
        primary: accentPrimary,
        secondary: accentSecondary,
        surface: highdarkNeutral,
      
        onSecondary: darkBlackgoundColor,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: backgroundColor), // Titles
        bodyLarge: TextStyle(fontSize: 18, color: backgroundColor), // body text
        bodyMedium:
            TextStyle(fontSize: 16, color: backgroundColor), // secondary text
      ),
      fontFamily: 'Concert One',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: backgroundColor,
          backgroundColor: accentPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: blackSurfaceColor,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: accentPrimary,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
