import 'package:flutter/material.dart';

extension BrightnessExtension on Brightness {
  static Brightness byName(String name) {
    return name == 'light' ? Brightness.light : Brightness.dark;
  }
}
