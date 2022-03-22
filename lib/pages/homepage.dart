import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Widgets/theam.dart';
import 'dart:convert';
import 'package:untitled/models/catalog.dart';
import '../Widgets/drawer.dart';
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

   return Scaffold(
     backgroundColor: MyTheme.creamColor,
        body:SafeArea(
          child: Container(
            padding: Vx.m24,
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: const [
                Header(),  // function calling
                BrothersList(),
              ],
            ),
          ),
        ),

        /*body:  GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
          ListView.builder(
            itemCount: CatalogModels.items.length,
            itemBuilder: (context,index) => ItemWidget(itm: CatalogModels.items[index])
          ),*/
        //drawer: MyDrawer(),
      );

  }
}

class Header extends StatelessWidget{
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        "Brothers".text.xl5.bold.make(),
        "We Are Brothers".text.bold.make(),
      ],
    );
  }
}

class BrothersList extends StatelessWidget{
  const BrothersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context, index) {
            final bro = CatalogModels.items[index];
            return VxBox(
                child: Row(
                  children: [
                    Image.asset(bro.image).box.roundedFull.px4.make().wh32(context),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        bro.name.text.bold.xl2.make().px8(),
                        bro.desc.text.bold.make().px(8),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          children: [
                            bro.age.text.make(),
                            ElevatedButton(onPressed: (){
                            },
                                autofocus: false,
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(const StadiumBorder())                                      ),
                                child: "about".text.make()).box.rounded.make().pOnly(right: 0.2),
                          ],
                        ).px8()
                      ],
                    ).box.make().expand()
                  ],
                )
            ).white.rounded.square(150).p4.make();
          },
        ).expand()
      ],
    ).expand();
  }
}