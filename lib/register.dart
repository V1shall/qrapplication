
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:loginpage/loginscreen.dart';
import 'package:loginpage/qrcode.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();







  void register()async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
    headers:<String,String>{
      'JSON':'application/json; charset=UTF-8'
    },
      body:jsonEncode({
        'name':name.text,
        'email':email.text,
        'rollno':rollno.text,
        'password':password.text,

      })
    );
    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200){
      Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
  }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Something went wrong')));
    }

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Registration',style: TextStyle(color: Colors.white,fontSize: 50,),)
              ,
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: name,
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
                  controller: rollno,
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
                  controller: email,
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
                  controller: password,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter youur password',
                  ),
                ),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {register();
//print(name.text);
//print(email.text);
//print(rollno.text);       //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => qrcode()));
//print(password.text);
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
