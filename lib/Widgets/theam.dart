import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(){
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        color:  Colors.white,
        titleTextStyle: TextStyle(color: Colors.black,),
        iconTheme: IconThemeData.fallback(),
      )
    );
  }
  static ThemeData darkTheme(){
    return ThemeData(brightness: Brightness.dark);
  }
}