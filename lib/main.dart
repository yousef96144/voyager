import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'screens/login.dart';
import 'screens/maketrip.dart';
import './screens/signup.dart';
=======
import 'package:voyager/screens/login.dart';
import 'package:voyager/screens/signup.dart';

>>>>>>> 3b076039026168fe68ecd292a2551dcd7644bb0e

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
<<<<<<< HEAD
      home: StartMyApp(),
=======
      home: Signup(),
>>>>>>> 3b076039026168fe68ecd292a2551dcd7644bb0e
    );
  }

}
<<<<<<< HEAD
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
            body: //Login() ,
                MakeTrip(),
     // Signup()
            )
    ;
  }

}
=======
>>>>>>> 3b076039026168fe68ecd292a2551dcd7644bb0e
