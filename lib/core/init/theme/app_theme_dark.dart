import 'package:flutter/material.dart';
import '../../constants/app/app_constants.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';
import 'panache/yellow/yellow_theme.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight _instance;
  static AppThemeLight get instance {
    if (_instance == null) _instance = AppThemeLight._init();
    return _instance;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData();
  // ThemeData get theme => yellowTheme;
  /*ThemeData get theme => ThemeData(
      fontFamily: ApplicationConstants.FONT_FAMILY,
      colorScheme: appColorScheme(),
      textTheme: textTheme(),
      floatingActionButtonTheme: ThemeData.light().floatingActionButtonTheme,
      tabBarTheme: tabBarTheme(),
      appBarTheme: appBarTheme());*/

  TabBarTheme tabBarTheme() {
    return TabBarTheme(
      labelPadding: insets.lowPaddingAll,
      unselectedLabelStyle:
          textThemeLight.headline4.copyWith(color: colorSchemeLight.surface),
    );
  }

  TextTheme textTheme() {
    return TextTheme(
        headline1: textThemeLight.headline1,
        headline2: textThemeLight.headline2,
        overline: textThemeLight.headline3);
  }

  ColorScheme appColorScheme() {
    return ColorScheme(
      primary: colorSchemeLight.primaryColor,
      primaryVariant: colorSchemeLight.primaryVariant,
      secondary: colorSchemeLight.secondary,
      secondaryVariant: colorSchemeLight.secondaryVariant,
      surface: colorSchemeLight.surface,
      background: colorSchemeLight.background,
      error: colorSchemeLight.error,
      onPrimary: colorSchemeLight.onPrimary,
      onSecondary: colorSchemeLight.onSecondary,
      onSurface: colorSchemeLight.onSurface,
      onBackground: colorSchemeLight.onBackground,
      onError: colorSchemeLight.onError,
    );
  }

  AppBarTheme appBarTheme() {
    return ThemeData.light().appBarTheme.copyWith(
          shadowColor: Colors.black38,
        );
  }
}
