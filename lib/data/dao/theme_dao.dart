import 'package:flutter/material.dart';
import 'package:trabalho3/data/models/custom_theme.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';

class ThemeDao {
  final NosqlBancoDados _db;

  ThemeDao(this._db);

  void toggleTheme() {
    _createThemeSeNaoExistir();

    var theme = _db.themeBox.get(1)!;

    theme.brightness = Brightness.dark == theme.brightness
        ? Brightness.light
        : Brightness.dark;
  }

  void _createThemeSeNaoExistir() {
    if (_db.themeBox.isEmpty()) {
      _db.themeBox.put(CustomTheme(
        brightness: Brightness.light,
      ));
    }
  }
}
