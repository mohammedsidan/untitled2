import 'package:flutter/material.dart';
import 'package:untitled2/regpag.dart';
import 'package:untitled2/scan.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        Container(
          width: 850,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ENTER YOUR ROLL NO',
              hintStyle: TextStyle(color: Colors.white),
            ),
            ),
          ),
  SizedBox(height: 40),
          Container(
            width: 850,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ENTER YOUR PASSWORD',
                  hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 40),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const Scan()),
            );
          }, child: Text("Login",style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),)),
Text('Dont have an account?',
  style: TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  )
  ),
          TextButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const Reg()),
            );
          }, child: Text("Register",style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),)),

        ],
      )),
      backgroundColor: Colors.teal,

    );
  }
}
