import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CustomTheme {
  @Id()
  final int id;
  final Brightness brightness;
 
  CustomTheme({this.id = 0, required this.brightness});

  ThemeData get themeData => ThemeData(brightness: brightness);
}
