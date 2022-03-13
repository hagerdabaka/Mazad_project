import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'colors.dart';

ThemeData darkTheme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor:
            // Colors.deepOrange
            defaultColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(
          color: Colors.black,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black87,
      selectedItemColor: defaultColor,
      //Colors.deepOrangeAccent,
      elevation: 60.0,
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
    )));

ThemeData lightTheme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: defaultColor,
      //Colors.deepOrange,
    ),
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black87,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(
          color: Colors.white,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: defaultColor,
      // Colors.deepOrangeAccent,
      elevation: 60.0,
      backgroundColor: Colors.black87,
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
    )));
