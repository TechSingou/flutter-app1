import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: Typography.tall2014,
        iconTheme: const IconThemeData(
          size: 22,
          color: Colors.deepOrange,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange,
        )),
    ThemeData(
        primarySwatch: Colors.teal,
        textTheme: Typography.tall2014,
        iconTheme: const IconThemeData(
          size: 22,
          color: Colors.teal,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
        )),
    ThemeData(
        primarySwatch: Colors.pink,
        textTheme: Typography.tall2014,
        iconTheme: const IconThemeData(
          size: 22,
          color: Colors.pink,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.pink,
        )),
    ThemeData(
        primarySwatch: Colors.green,
        textTheme: Typography.tall2014,
        iconTheme: const IconThemeData(
          size: 22,
          color: Colors.green,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        )),
  ];
}
