

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';


class SignaturePage extends StatefulWidget {


  @override

  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final GlobalKey<SfSignaturePadState> keySignaturePad = GlobalKey();

  void _handleclearbutton(){
    keySignaturePad.currentState?.clear();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8.0),
        child: Column(
          children: [

            SfSignaturePad(
              key: keySignaturePad,
              backgroundColor: Colors.yellowAccent,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                  child: Text("Download"),
                ),
                SizedBox(width: 10.0,),
                ElevatedButton(onPressed: _handleclearbutton,
                  child: Text("Clear"),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}





