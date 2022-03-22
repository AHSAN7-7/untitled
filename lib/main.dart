import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/loginpage.dart';
import 'package:untitled/utills/routes.dart';

import 'Widgets/theam.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);
 // int time =24;
  @override

  Widget build(BuildContext context) {
    //TODO: implement build
    return
      MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(),
        //darkTheme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
          initialRoute: MyRoutes.homeRoute,
            routes: {
          //MyRoutes.loginRout:(context)=>LoginPage(),
          MyRoutes.homeRoute:(context)=> const HomePage(),
          MyRoutes.loginRout:(context)=> const LoginPage(),
            },

      );

  }

}

