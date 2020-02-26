import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,

          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent,
          errorColor: Colors.red,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'Raleway',fontSize: 14 ,fontWeight: FontWeight.bold),button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          //appBarTheme: AppBarTheme(textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'Raleway',fontSize: 20 ,fontWeight: FontWeight.bold)))
      ),
      title: "VOYAGER",
      home: Login(),
    );
  }

}
class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StateLogin();
  }
}
class _StateLogin extends State<Login>{
  @override
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
            body:  Form(
                child: Padding(
                  padding:  EdgeInsets.only(top:80.0,left: 30.0,right: 30.0),
                  child: ListView(
                     // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                          Container(

                            child: Column(children: <Widget>[
                              Container(
                               // decoration:BoxDecoration(
                                 // border: Border.all(width: 5)
                               // ),
                                height: 55,
                                width: 258,
                                child: Image.asset("image/logo.png",
                                        fit: BoxFit.cover),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                width: 300.0,
                                height: 43.0,
                                decoration:BoxDecoration(
                                  //  border: Border.all(width: 5)
                                ),
                                    margin: EdgeInsets.only(left: 2.0,right: 2.0,top: 0.5,bottom: 0.5),
                                    child: Text("Login now to start travelling wherever you want  " ,


                                      textAlign: TextAlign.center,
                                      ),
                                  )
                            ],
                            ),
                          ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: Container(
                           // margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                 TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'email address' ,
                                      border:
                                       OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(50.0)
                                      )
                                ),
                                  controller: emailController,
                                //  onSubmitted: (_) => _submitData() ,


                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextFormField(

                                decoration: InputDecoration(
                                  labelText: 'password',
                                  border:
                                  OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0)
                                  )
                              ),
                                controller: passwordController,
                              //  onSubmitted: ,

                              ),
                              InkWell(
                                child: Text(
                                  'Forgot Password?' ,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    color: Colors.black54
                                  ),
                                ),
                                onTap: (){},
                              ),
                            ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Theme.of(context).accentColor,
                            color: Theme.of(context).primaryColor,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: (){},
                              child: Center(
                                child: Text(
                                    'Login',
                                style: Theme.of(context).textTheme.button,),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90.0,
                        )
                        ,
                        Row(
                          children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 60.0),
                            child: Text("Don't have an account?"),
                          ),
                          SizedBox(
                            width: 1.0,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Text("Sign Up",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor ,
                            ),),
                          )

                        ],
                        )
                    ],),
                ),
              ),

            )
    ;
  }

}