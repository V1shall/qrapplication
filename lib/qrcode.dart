import 'package:flutter/material.dart';
import 'package:loginpage/camera.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrcode extends StatefulWidget {
  const qrcode({Key? key}) : super(key: key);

  @override
  State<qrcode> createState() => _qrcodeState();
}

class _qrcodeState extends State<qrcode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.teal,
        body: Center(
          child:Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [

            CircleAvatar(
            radius: 80.0,
            backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkeF-I0KBh5eYwNUnYO4CQTJVzCeDBeBuFs2NA635K4d2K6Xb8P1e1qS3NS7WN5SBBSHc&usqp=CAU'),

            ),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              TextButton(onPressed: (){

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => camera()));

              }, child: Text('Scan',style: TextStyle(backgroundColor: Colors.red), )),


            ],
          ),
        ),
      ),
    );
  }
}
