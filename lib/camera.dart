import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:loginpage/profile.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Center(

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              MobileScanner(
              // fit: BoxFit.contain,
              onDetect: (capture) {
        final List<Barcode> barcodes = capture.barcodes;
        final Uint8List? image = capture.image;
        for (final barcode in barcodes) {
        debugPrint('Barcode found! ${barcode.rawValue}');
        }
        },
        ),

              TextField(),
              TextButton(onPressed: (){


                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => profile()));


              }, child: Text('Go'))



            ],
          ),
        ),
      )




    );
  }
}
