import 'package:flutter/material.dart';
import 'package:untitled/utills/routes.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String name =" ";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
       setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds:2));
      Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
      }     // on press login
  }

  @override
  Widget build(BuildContext context){
    return  Material(
      //color: Colors.black,
        child: Column( //mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/images/login.png", width: 250, height: 250, fit: BoxFit.cover),
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
          child: Form(

            key: _formKey,
            child: Column(
                children: [
                SizedBox( height: 40 , width: 250,
                  child: TextFormField(
                  decoration: const InputDecoration(
                  //labelText: "User Name",
                  hintText: "Enter User Name"
                  ),
                    validator: (String? value){
                    if(value != null && value.isEmpty){
                      return"Plz Enter User Name ";
                    }
                    else if(value != null && value.length<6){
                      return"user name must be at least 6 alphabets ";
                    }
                    return null;
                    },
                    onChanged: (value){
                    name = value;
                    setState(() {
                    }
                    );
                  }
                  ),
                ),
                SizedBox( height: 40, width: 250,
                  child: TextFormField(
                    obscureText: true,
                   decoration: const InputDecoration(
                     //labelText: "User Password ",
                       hintText: "Enter Password",
                     ),
                    validator: (String? value){
                      if(value != null && value.isEmpty){
                        return"Plz Enter PassWord ";
                      }
                      else if(value != null && value.length<6){
                        return"PassWord must be at least 6 alphabets ";
                      }
                      return null;
                    },
                    ),
                ),
                  SizedBox(
                      height: 20
                  ),
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                    child: InkWell(
                      //borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                      onTap: () => moveToHome(context),
                      //onDoubleTap: (){
                      //  Navigator.pushNamed(context,MyRoutes.homeRoute);   // on press login
                      //},
                      child: AnimatedContainer(
                        //decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                          //color: Colors.blue,
                        //),
                        duration:Duration(seconds: 2),
                        // color: Colors.blue,
                        alignment: Alignment.center,
                        height: 40 ,
                        width: changeButton? 100 : 250,

                        child: changeButton? Icon(Icons.done, color: Colors.white,):
                        Text("login"),
                        ),
                    ),
                  ),
                  //ElevatedButton(
                    //child: Text("LogIn"),
                    //style: TextButton.styleFrom(fixedSize: Size(450.0, 30.0)),
                 ],
              ),
          )
          )
          ],
        ),
    );
  }
}

