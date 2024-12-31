import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      primarySwatch: Colors.green, 
      
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor, 
        centerTitle: true, 
        foregroundColor: Colors.black, 
      ),

      textTheme:const TextTheme(
        displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, ), // Titles
        bodyLarge: TextStyle(fontSize: 16, ), // body text
        bodyMedium: TextStyle(fontSize: 14, ), // secondary text
      ),
       fontFamily: 'Concert One',
    );
  }
}
