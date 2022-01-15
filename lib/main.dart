import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/loginpage.dart';
import 'package:untitled/utills/routes.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);
 // int time =24;
  @override

  Widget build(BuildContext context) {
    //TODO: implement build
    return     MaterialApp(

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),

      //debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: "/login",
      routes: {
        //MyRoutes.loginRout:(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=> HomePage(),
        "/login":(context)=> LoginPage(),
      },
    );
  }
}

