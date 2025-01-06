import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:trabalho3/ui/enums/brightness_extension.dart';

@Entity()
class CustomTheme {
  @Id()
  int id;

  String brightness;

  CustomTheme({
    this.id = 0,
    required this.brightness,
  });

  void toggleBrightness() {
    var newBrightness = BrightnessExtension.byName(brightness);
    newBrightness =
        newBrightness == Brightness.dark ? Brightness.light : Brightness.dark;
    brightness = newBrightness.name;
  }

  copyWith({
    int? id,
    String? brightness,
  }) {
    return CustomTheme(
      id: id ?? this.id,
      brightness: brightness ?? this.brightness,
    );
  }
}
