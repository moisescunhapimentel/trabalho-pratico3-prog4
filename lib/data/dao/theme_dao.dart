import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:trabalho3/data/models/custom_theme.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';

class ThemeDao {
  final NosqlBancoDados _db;

  ThemeDao(this._db);

  void toggleTheme() {
    _createThemeSeNaoExistir();

    var theme = _db.themeBox.get(1)!;

    debugPrint('antes ${theme.brightness}');

    theme.toggleBrightness();

    debugPrint('att1 ${theme.brightness} ');

    _db.themeBox.put(theme, mode: PutMode.update);

    debugPrint('att2 ${theme.brightness} \n ${_db.themeBox.getAll()}');
  }

  CustomTheme getTheme() {
    _createThemeSeNaoExistir();

    return _db.themeBox.get(1)!;
  }

  void _createThemeSeNaoExistir() {
    if (_db.themeBox.isEmpty()) {
      debugPrint('criou');
      _db.themeBox.put(CustomTheme(brightness: Brightness.light.name));
    }
  }
}
