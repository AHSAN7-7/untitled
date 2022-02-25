import 'package:flutter/material.dart';
import 'package:untitled/Widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';

import '../Widgets/itemWidget.dart';
import '../models/catalog.dart';

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
            )),
          ),
      ),
      body: ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context,index) {
            return ItemWidget(
              itm: CatalogModels.items[index]
          );
          }
        ),
      drawer: MyDrawer(),
    );
  }
}

