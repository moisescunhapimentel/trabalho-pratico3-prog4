import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/inicio_screen.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: AppTheme.theme,
      home: const InicioScreen(),       
    );
  }
}
