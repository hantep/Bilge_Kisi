import 'package:flutter/material.dart';

class ColorSchemeDark {
  static ColorSchemeDark _instace;
  static ColorSchemeDark get instance {
    if (_instace == null) _instace = ColorSchemeDark._init();
    return _instace;
  }

  ColorSchemeDark._init();

  final Color primaryColor = Colors.red;
  final Color primaryVariant = Colors.red;
  final Color secondary = Colors.red;
  final Color secondaryVariant = Colors.red;
  final Color surface = Colors.red;
  final Color background = Colors.red;
  final Color error = Colors.red;
  final Color onPrimary = Colors.red;
  final Color onSecondary = Colors.red;
  final Color onSurface = Colors.red;
  final Color onBackground = Colors.red;
  final Color onError = Colors.red;
}
