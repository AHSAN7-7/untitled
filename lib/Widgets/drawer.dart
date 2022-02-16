import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              //padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: Image.asset("assets/images/me.png"),
                  //CircleAvatar(backgroundImage: AssetImage("assets/images/me.png"),),
                  margin: EdgeInsets.zero,
                    accountName:  const Text("Ahsan Ullah Khan"),
                    accountEmail: const Text("aukniazi777@gmail.com"),
                )
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text(
                "profile",
                style: TextStyle(color: Colors.white),),
            ),
             const ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text(
                  "Mail",
                style: TextStyle(color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}