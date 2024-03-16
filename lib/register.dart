
import 'package:flutter/material.dart';
import 'package:loginpage/qrcode.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Registration',style: TextStyle(color: Colors.white),)
              ,
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Name',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your roll no',
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your E MAil',
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter youur password',
                  ),
                ),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => qrcode()));

                  },
                  child: Text(
                    'Register',


                    style: TextStyle(
                      backgroundColor: Colors.teal,
                      color: Colors.white,
                    ),
                  ),

              ),
              
            ],
          ),
          
      )
        ,
      ),
    );
  }
}
