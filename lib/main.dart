import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/maketrip.dart';
import './screens/signup.dart';
import './screens/profile.dart';

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
      home: StartMyApp(),

    );
  }

}
class StartMyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StateMyApp();
  }
}
class _StateMyApp extends State<StartMyApp>{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
            body: Profile()
    // Login() ,
       //MakeTrip(),
     //Signup()
     // Login()
            )
    ;
  }

}
