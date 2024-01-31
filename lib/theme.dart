import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const barBackground = Color(0xff464747);
const primaryColor = Color(0xff252525);
const secondaryColor = Color(0xff7e7e7e);
const scaffoldBackground = Colors.grey;
const accentColor = Colors.teal;

final materialTheme = ThemeData(
  scaffoldBackgroundColor: scaffoldBackground,
  appBarTheme: const AppBarTheme(color: barBackground),
  primaryColor: primaryColor,
  secondaryHeaderColor: secondaryColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: accentColor)
);

final cupertinoTheme = CupertinoThemeData(
  primaryColor: primaryColor,
  barBackgroundColor: barBackground,
  primaryContrastingColor: accentColor,
  scaffoldBackgroundColor: scaffoldBackground
);

/*const toolbarTextStyle = TextStyle(color: Colors.white, fontSize: 16.0);
const textStyleBlackPlain = TextStyle(color: Colors.black, fontSize: 30.0);
const bottomNavTextStyle = TextStyle(color: Colors.white, fontSize: 14.0);
const toolbarButtonTextStyle = TextStyle(color: Colors.white, fontSize: 14.0);
const tabsContentTextStyle = TextStyle(color: Colors.black, fontSize: 30.0);*/