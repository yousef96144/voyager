import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/screens/signup.dart';



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
    return ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                  width: MediaQuery.of(context).size.width*0.693,
                  height: 43.0,
                  decoration:BoxDecoration(
                    //  border: Border.all(width: 5)
                  ),
                  margin: EdgeInsets.only(left: 2.0,right: 2.0,top: 0.5,bottom: 0.5),
                  child: Text("Login now to start travelling wherever you want  " ,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,

                        color: Color(0xFF2B2B2B)
                    ),

                    textAlign: TextAlign.center,
                  ),
                )
              ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*.84,
                      height: 52.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                           // border: Border.all(style: BorderStyle.none,color: Colors.white),
                          color: Color(0xFFF4F8FF)
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Color(0xFFAAADAD)
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20.0,top: 17.5,bottom: 17.5),
                            labelText: 'email address' ,
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFFAAADAD),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ) ,
                            border:
                            OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.0)
                            ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7),),
                                  borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),
                        ),
                        controller: emailController,
                        //  onSubmitted: (_) => _submitData() ,


                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.84,
                      height: 52.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          //  border: Border.all(width: 5),
                          color: Color(0xFFF4F8FF)
                      ),
                      // color: Color(0xFFF4F8FF),
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
                            border:
                            OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.0)
                            ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                              borderRadius: BorderRadius.all(Radius.circular(26.0))
                          ),

                        ),

                        controller: passwordController,
                        //  onSubmitted: ,

                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent, // makes highlight invisible too
                      child: Text(
                        'Forgot Password?' ,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 13,

                            color: Color(0xFF4F4F4F)
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
            Center(
              child: Container(
                  height: 48.0,
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
                      colorBrightness: Brightness.light,
                      onPressed: (){},
                      child: Text("login",
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
            SizedBox(
              height: 90.0,
            )
            ,
            Center(
              child: Container(
                width: 290.0,
                height: 33.0,
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("Don't have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                            color: Color(0xFF4F4F4F),
                            fontWeight: FontWeight.w400

                        ),),
                    ),

                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent, // makes highlight invisible too
                          onTap: (){
                            TextStyle(decoration: TextDecoration.underline);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context)=>Signup(),
                                ),
                            );
                          },
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3FCC59) ,


                          ),
                      ),
                    )

                  ],
                ),
              ),
            )
          ],);
}}
