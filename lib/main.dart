import 'package:flutter/material.dart';
import 'package:quiz_app/test.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.amber,
    primaryColor: Colors.grey[800],
    scaffoldBackgroundColor: Colors.blueGrey,
    backgroundColor: Colors.amber,
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        // ignore: deprecated_member_use
        headline: base.headline!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        // ignore: deprecated_member_use
        title: base.title!.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        button: base.button!.copyWith(
          letterSpacing: 3.0,
        ),
        // ignore: deprecated_member_use
        body1: base.body1!.copyWith(
          fontSize: 16.9,
          color: Colors.white,
        ),
      )
      .apply(
        fontFamily: "BebasNeue",
      );
}

void main() {
  runApp(
    new MaterialApp(
      theme: _appTheme,
      home: QuizApp(),
    ),
  );
}
