import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
   int time= 24;
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
          title: const Text(
            "Allah is Great",
            style: (TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
            )
            ),
          ),
      ),
      body: Center(
          child: Text(
              "Allah is with us $time hours",
          style: (const TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          )
          )
          ),
      ),
      drawer: const Drawer(),
    );
  }
}