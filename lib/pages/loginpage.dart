import 'package:flutter/material.dart';
import 'package:untitled/utills/routes.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  @override
  Widget build(BuildContext context){
    return  Material(
      //color: Colors.black,
      child: Column(
        children: [
          Image.asset("assets/images/login.png", width: 350, height: 350, fit: BoxFit.cover),
       SizedBox(
          height: 20.0
        ),
        Text("Welcome "+ name,
          style: (
          TextStyle(
            fontSize: 20.0,
          )
          ),
        ),
        const SizedBox(
          height: 20  // for spacing
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
        child: Column(
            children: [
            TextFormField(
            decoration: const InputDecoration(
            labelText: "User Name",
            hintText: "Enter User Name"
            ),
              onChanged: (value){
              name = value;
              setState(() {
              });
              }
            ),
            TextFormField(
              obscureText: true,
             decoration: const InputDecoration(
               labelText: "User Password ",
                 hintText: "Enter Password",
               ),
              ),
              SizedBox(
                  height: 20
              ),

              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context,MyRoutes.homeRoute);   // on press login
                },

                //onDoubleTap: (){
                //  Navigator.pushNamed(context,MyRoutes.homeRoute);   // on press login
                //},
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                    color: Colors.blue,
                  ),
                  duration:Duration(seconds: 2),
                  // color: Colors.blue,
                  alignment: Alignment.center,
                  height: 40,
                  width: changeButton? 100 : 350,

                  child: changeButton? Icon(Icons.done, color: Colors.white,):
                  Text("login"),
                  ),
              ),

              //ElevatedButton(
                //child: Text("LogIn"),
                //style: TextButton.styleFrom(fixedSize: Size(450.0, 30.0)),

                  //onPressed: () {
                  //Navigator.pushNamed(context,MyRoutes.homeRoute);   // on press login
                  //},

            //  )
             ],
          )
        )
        ],
      )
    );
  }
}

