import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
enum SingingSex { male, female }
enum SingingAge { yes, no }


class Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StateLogin();
  }
}
class _StateLogin extends State<Signup>{
  final fullnamecontroller=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmpasswordcontroller=TextEditingController();
  final phonenumbercontroller=TextEditingController();

  SingingSex _characterSex = SingingSex.male;
  SingingAge _characterAge = SingingAge.yes;
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Color(0xFFE5E5E5),
      body: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height*0.075,
              ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                    height: 50.0,
                    width: 120.0,
                    child: Text('Sign Up',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                      color: Color(0xFF3FCC59)
                    ),
                    textAlign: TextAlign.left,
                    ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.035,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.87,
                  child: Column(
                    children: <Widget>[
                      Container(
                      width: MediaQuery.of(context).size.width*0.86,
                        height: MediaQuery.of(context).size.height*0.075,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            //  border: Border.all(width: 5),
                            color: Color(0xFFF4F8FF)
                        ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                          labelText: 'full name',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: fullnamecontroller,
                      ),
                    ),
                    SizedBox(height: 18.0,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.87,
                      height: MediaQuery.of(context).size.height*0.075,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          //  border: Border.all(width: 5),
                          color: Color(0xFFF4F8FF)
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                          labelText: 'email address',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: emailController
                      ),
                    ),
                    SizedBox(height: 22.0,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.87,
                      height: MediaQuery.of(context).size.height*0.075,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          //  border: Border.all(width: 5),
                          color: Color(0xFFF4F8FF)
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                          labelText: 'password',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: passwordController,
                      ),
                    ),
                    SizedBox(height: 22.0,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.87,
                      height: MediaQuery.of(context).size.height*0.075,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          //  border: Border.all(width: 5),
                          color: Color(0xFFF4F8FF)
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                          labelText: 'confirm password',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: confirmpasswordcontroller,
                      ),
                    ),
                    SizedBox(height: 22.0,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.87,
                      height: MediaQuery.of(context).size.height*0.075,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          //  border: Border.all(width: 5),
                          color: Color(0xFFF4F8FF)
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                          labelText: 'phone number(optional)',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: phonenumbercontroller,
                      ),
                    )
                    ],
                  ),
                ),
              ),
              SizedBox(height:  MediaQuery.of(context).size.height*0.02),
              //////////////////////////////////////////////////////////////////////Radio buttons
              Container(
                padding: EdgeInsets.only(left: 40.0),
                decoration:BoxDecoration(
              //      border: Border.all(width: 5)
                ),
                child: Row(children: <Widget>[
                  Column(
                    children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Text('Sex:',
                        style:TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.left,

                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.03,
                    ),
                    Text(
                      'Over age 18?',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500


                      ),
                    ),
                  ],

                  ),
                  Column(children: <Widget>[
                    Radio(
                      value: SingingSex.male,
                      groupValue: _characterSex,
                      onChanged:  (SingingSex value) {
                        setState(() { _characterSex = value; });
                      },
                  ),


                    Radio(
                      value: SingingAge.yes,
                      groupValue: _characterAge,
                      onChanged:(SingingAge value) {
                        setState(() { _characterAge = value; });
                      },
                    )
                  ],),
                  Column(children: <Widget>[
                    Text(
                      'Male',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500

                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.035,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Text(
                        'Yes',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500

                        ),
                      ),
                    ),
                  ],),
                  Column(children: <Widget>[
                    Radio(
                      value: SingingSex.female,
                      groupValue: _characterSex,
                      onChanged: (SingingSex value) {
                        setState(() { _characterSex = value; });
                      },
                    ),

                    Radio(
                      value: SingingAge.no,
                         groupValue: _characterAge,
                       onChanged: (SingingAge value) {
                         setState(() { _characterAge = value; });
                       },
                    )
                  ],),
                  Column(children: <Widget>[
                    Text(
                      'Female',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500


                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.035,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Text(
                        'No',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500

                        ),
                      ),
                    )
                  ],
                  ),

                ],),),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:  MediaQuery.of(context).size.width*0.86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      //shadowColor: Theme.of(context).accentColor,
                      color: Color(0xFF3FCC59),
                      //Theme.of(context).primaryColor,
                    //  elevation: 7.0,
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // makes highlight invisible too
                        onPressed: (){},
                        child: Text("Sign Up",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600
                          ),


                          //   style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    )),
              ),



    ],
    )
    )     ;
  }
}