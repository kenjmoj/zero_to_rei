import 'package:flutter/material.dart';
import 'package:numerictokanji/Styles/style_constants.dart';

class Themes {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: kDarkPrimaryColor,
    scaffoldBackgroundColor: kDarkPrimaryColor,
    accentColor: kDarkAccentColor,
    secondaryHeaderColor: kLightPrimaryColor,
    buttonColor: kDarkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: kDarkPrimaryColor,
    ),
    textTheme: TextTheme(
      button: kDarkButtonStyle,
      bodyText1: kDarkTextStyle,
      bodyText2: kDarkSubTextStyle,
    ),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: kLightPrimaryColor,
    scaffoldBackgroundColor: kLightPrimaryColor,
    accentColor: kLightAccentColor,
    secondaryHeaderColor: kDarkPrimaryColor,
    buttonColor: kLightButtonColor,
    appBarTheme: AppBarTheme(
      color: kLightPrimaryColor,
    ),
    textTheme: TextTheme(
      button: kLightButtonStyle,
      bodyText1: kLightTextStyle,
      bodyText2: kLightSubTextStyle,
    ),
  );
}
