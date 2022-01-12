import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/loginpage.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);
 // int time =24;
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return     MaterialApp(
      //home: HomePage(),
      initialRoute: "/login",
      routes: {
        "/":(context)=>loginpage(),
        "/home":(context)=> HomePage(),
        "/login":(context)=> loginpage(),
      },
    );
  }
}