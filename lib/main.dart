import 'package:flutter/material.dart';
import './screens/login.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,

      title: "VOYAGER",
      home: Login(),
      //StartMyApp(),

    );
  }

}
