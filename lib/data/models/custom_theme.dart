import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CustomTheme {
  @Id()
  int id;
  Brightness brightness;

  CustomTheme({this.id = 0, this.brightness = Brightness.light});

  ThemeData get themeData => ThemeData(brightness: brightness);
}
