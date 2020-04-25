import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';
import 'dart:async';

import 'package:voyager/screens/profilescreen/background.dart';

class MyProfileImages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StateImages();
  }

}
class _StateImages extends State<MyProfileImages>{

  File imagePicker;

  _openGallery(BuildContext context)async{
    var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
    File croppedImage=await ImageCropper.cropImage(
      sourcePath: picture.path,
      // aspectRatio: CropAspectRatio(ratioX: 1,ratioY: 1),
      maxHeight:8,
      maxWidth: 4,
      cropStyle: CropStyle.circle,
      compressQuality: 44,
      androidUiSettings: AndroidUiSettings(cropGridStrokeWidth: 10),
    );
    this.setState((){
      imagePicker=picture ;
    });
    Navigator.of(context).pop();

  }

  _openCamera(BuildContext context)async{
    var picture=await ImagePicker.pickImage(source: ImageSource.camera);
    File croppedImage=await ImageCropper.cropImage(
        sourcePath: picture.path,
        aspectRatio: CropAspectRatio(ratioX: 2,ratioY: 2),
        maxHeight: 250,
        maxWidth: 250,
        cropStyle: CropStyle.circle,
        compressQuality: 44


    );
    this.setState((){
      imagePicker=picture ;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Color(0xFFF4F8FF),
        elevation: 4,
        shape: Border.all(width: 1,color: Colors.black),
        title: Text('Make a Choose'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Gallery'),
                onTap: (){
                  _openGallery(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  _openCamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Background(),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          child: Container(
            height: MediaQuery.of(context).size.height*0.245,
            width: MediaQuery.of(context).size.width*0.465,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width:5.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: imagePicker == null
                      ? AssetImage('assets/image/profile.png')
                      : FileImage(imagePicker),
                )
            ),
            child: Container(
              height: MediaQuery.of(context).size.height*0.245,
              width: MediaQuery.of(context).size.width*0.465,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),
              child: Stack(children: <Widget>[
                Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.only(top: 6),
                      child: Material(
                        color: Color(0xFFF4F8FF),

                        borderRadius: BorderRadius.circular(30.0),
                        elevation: 2.0,
                        child: IconButton(

                          iconSize: 25.0,
                          icon: Icon(
                            Icons.photo_camera,
                            // color: Color(0xFF3FCC59),
                          ),
                          onPressed: (){_showChoiceDialog(context);},
                          splashColor: Colors.transparent,
                          highlightColor: Colors
                              .transparent, // makes highlight invisible too
                        ),
                      ),
                    )
                )
              ],
              ),
            ),
          ),
        )
      ]),
    );
  }

}