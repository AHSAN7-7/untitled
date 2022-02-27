import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:untitled/Widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';

import '../Widgets/itemWidget.dart';
import '../models/catalog.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async{
   var brothersJson = await rootBundle.loadString("assets/files/brothers.json");
   var decodeData = jsonDecode(brothersJson);
   var brothers = decodeData["people"];
   CatalogModels.items= List.from(brothers).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {

   });
   // print(brothersJson);
  }

 @override
  Widget build(BuildContext context) {
   //final dummyList = List.generate(5, (index) => CatalogModels.items[0]);
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
          itemBuilder: (context,index) => ItemWidget(
              itm: CatalogModels.items[index]
          )
        ),
      drawer: MyDrawer(),
    );
  }
}

