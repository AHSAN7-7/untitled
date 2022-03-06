import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:untitled/Widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
   CatalogModels.items= List.from(brothers).map<Item>((E) => Item.fromMap(E)).toList();
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
          title: "Allah is Great".text.size(20).bold.make()
      ),
      body:  GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
            itemCount: CatalogModels.items.length,
            itemBuilder: (context, index){
            final itm= CatalogModels.items[index];
            return Card(
              child: GridTile(child: Image.network(itm.image),
                header: Container(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(itm.name,style: const TextStyle(),textAlign: TextAlign.center),
                ),color: Colors.deepPurple,height: 35),
                footer: Container(child: itm.age.text.make()),
              ),
            );
        }),
        /*ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context,index) => ItemWidget(itm: CatalogModels.items[index])
        ),*/
      drawer: MyDrawer(),
    );
  }
}

