

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:start/home/create.dart';
import 'package:start/home/image.dart';

import 'package:start/home/scan.dart';

class MYhomePage extends StatefulWidget {
  const MYhomePage({Key? key}) : super(key: key);

  @override
  _MYhomePageState createState() => _MYhomePageState();
}

class _MYhomePageState extends State<MYhomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BarcodeCreatePage()));
                  },
                  child: Text("Generate Bar code"),

              ),
              SizedBox(height: 10.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BarcodeScanPage()));
                },
                child: Text("Scan Bar code"),

              ),
              SizedBox(height: 10.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageCapture()));
                },
                child: Text("Upload images"),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
