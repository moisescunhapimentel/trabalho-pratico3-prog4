import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/models/custom_theme.dart';

class ThemeNotifier extends StateNotifier<CustomTheme> {
  ThemeNotifier({required Future<CustomTheme> initialTheme})
      : super(CustomTheme(brightness: Brightness.light.name)) {
    _initialize(initialTheme);
  }

  Future<void> _initialize(Future<CustomTheme> initialTheme) async {
    state = await initialTheme;
  }

  void changeTheme(CustomTheme newTheme) {
    state = state.copyWith(brightness: newTheme.brightness);
  }
}
