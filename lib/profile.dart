import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( backgroundColor: Colors.teal,
        body: Center(


          child: Column(
            children: [
              Container(
              ),
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),),
              Text('Monkey D Luffy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text('King of Pirates',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.email,
                      color:Colors.teal ,
                    ),
                    SizedBox(width: 10,),
                    Text('monkeydluffy@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],

                ),
                decoration: const BoxDecoration(color: Colors.white),

              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  children: [
                    Icon(Icons.phone,
                      color:Colors.teal ,
                    ),
                    SizedBox(width: 10,),
                    Text('orewa monkey d luffy..',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],

                ),
                decoration: const BoxDecoration(color: Colors.white),

              ),


            ],
          ),
        )
      ),
    );
  }
}
