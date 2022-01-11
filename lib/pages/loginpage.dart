import 'package:flutter/material.dart';

class loginpage extends StatelessWidget{
  // const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
              fontSize: 20
          ),

        ),
      ),
    );

  }
}

