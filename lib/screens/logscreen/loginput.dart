import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../tabs_screen.dart';
import '../profile..dart';
class LogInput extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateLogInput();
  }

}
class StateLogInput extends State<LogInput>{
  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width:  MediaQuery.of(context).size.width*.84,
                      height: MediaQuery.of(context).size.height*0.075,
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
                      height: MediaQuery.of(context).size.height*0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.84,
                      height: MediaQuery.of(context).size.height*0.075,
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
              height:MediaQuery.of(context).size.height*0.03,
            ),
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
                      colorBrightness: Brightness.light,
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>TabsScreen()));
                      },
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
          ],
        ),
      ),
    );
  }

}