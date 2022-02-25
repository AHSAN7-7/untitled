import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget{
  final Item itm;

   const ItemWidget({Key? key,  required this.itm}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return ListTile(
    leading: Image.network(itm.image),
      title: Text(itm.name),
    subtitle: Text(itm.desc),
    trailing: Text(" \$${itm.price.toString()}"),
  );
  }

}
