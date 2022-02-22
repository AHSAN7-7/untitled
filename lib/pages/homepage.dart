import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/Widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepPurpleAccent,
          //foregroundColor: Colors.deepPurpleAccent,
          title: const Text(
            "Allah is Great",
            style: (TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            )
            ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            onTap: (){
              print("\$${Items.name}");
            },
            leading: Image.asset("assets/images/me.png"),
            title: Text(Items.name),
            subtitle: Text(Items.desc),
            trailing: Text("\$${Items.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 25.0),),


          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}