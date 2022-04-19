

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImageCapture extends StatefulWidget {
  const ImageCapture({Key? key}) : super(key: key);

  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {

  final  ImagePicker _picker = ImagePicker();
  XFile? image;

  void filePicker()async{
    final XFile? SelectImage = await _picker.pickImage(source: ImageSource.camera);
    print(SelectImage?.name);

    setState(() {
      image = SelectImage;

    });
  }
  void filePicker2()async{

    final XFile? SelectImage2 = await _picker.pickImage(source: ImageSource.gallery);
    print(SelectImage2!.name);
    setState(() {

      image = SelectImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              children: [
                 image == null? Text("Select the file") : Image.file(
                  File(image!.path),
                  width:250,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: filePicker ,
                        child: Text("Camera")

                    ),
                    SizedBox(width: 100.0,),
                    ElevatedButton(onPressed: filePicker2 ,
                        child: Text("Gallery")

                    )
                  ],
                )
              ],

            ),
          ),
        ),
    );


  }
}

