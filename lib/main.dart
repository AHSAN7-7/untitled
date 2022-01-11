import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);
 // int time =24;
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return  const MaterialApp(
      home: HomePage(),
    );
  }
}