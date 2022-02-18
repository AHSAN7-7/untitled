import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyTheme{
static ThemeData lightTheme()=> ThemeData(
  primarySwatch: Colors.deepPurple,
  appBarTheme: AppBarTheme(
    color:  Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData.fallback(),
  )
);

static ThemeData darkTheme()=> ThemeData(brightness: Brightness.dark);
}