
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/screens/login.dart';
import 'package:voyager/screens/signup.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme: ThemeData(
        
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent,
          errorColor: Colors.red,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'Raleway',fontSize: 18.0 ,fontWeight: FontWeight.bold),button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          //appBarTheme: AppBarTheme(textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'Raleway',fontSize: 20 ,fontWeight: FontWeight.bold)))
      ),
      title: "VOYAGER",
      home: Signup(),
    );
  }

}
