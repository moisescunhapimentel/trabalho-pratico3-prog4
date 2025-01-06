import 'package:flutter/material.dart';
import 'package:trabalho3/data/models/custom_theme.dart';

class ThemeModel extends ChangeNotifier {
  CustomTheme customTheme;

  ThemeModel({required this.customTheme});

  changeTheme(CustomTheme newCustomTheme) {
    customTheme = newCustomTheme;
    notifyListeners();
  }
}
