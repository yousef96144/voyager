import 'package:flutter/material.dart';



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
    return Form(
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
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontSize: 14,

                        color: Color.fromRGBO(43, 43, 43, 100)
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
            Container(
              // margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 348.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        //  border: Border.all(width: 5),
                        color: Color.fromRGBO(215, 215, 215, 100)
                    ),
                    child: TextFormField(
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                          labelText: 'email address' ,
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26.0)
                          )
                      ),
                      controller: emailController,
                      //  onSubmitted: (_) => _submitData() ,


                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 348.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        //  border: Border.all(width: 5),
                        color: Color.fromRGBO(215, 215, 215, 100)
                    ),
                    // color: Color.fromRGBO(215, 215, 215, 100),
                    child: TextFormField(
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                          labelText: 'password',
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26.0)
                          )
                      ),
                      controller: passwordController,
                      //  onSubmitted: ,

                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  InkWell(
                    child: Text(
                      'Forgot Password?' ,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontSize: 13,

                          color: Color.fromRGBO(79, 79, 79, 100)
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
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
            SizedBox(
              height: 90.0,
            )
            ,
            Center(
              child: Container(
                width: 271.0,
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
                            color: Color.fromRGBO(79, 79, 79, 100)

                        ),),
                    ),
                    SizedBox(
                      width: 1.0,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Poppins',

                          color: Color.fromRGBO(63, 204, 84, 100) ,

                        ),),
                    )

                  ],
                ),
              ),
            )
          ],),
      ),
    );
}}
