import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
   int time= 24;
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
          title: const Text("MIS Data"),
      ),
      body: Center(
          child: Text("Allah is with us $time hours"),

      ),
      drawer: const Drawer(),
    );


  }

}