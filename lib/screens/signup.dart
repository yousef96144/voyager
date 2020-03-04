import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter/cupertino.dart';
>>>>>>> 3b076039026168fe68ecd292a2551dcd7644bb0e


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

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Form(
        child: Padding(
          padding: EdgeInsets.only(top:50.0,left:33.0,right: 33.0),
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(children: <Widget>[
                  Container(
                    
                    height: 50.0,
                    width: 120.0,
                    child: Text('Sign Up',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 30.0,
                      color: Color(0xFF3FCC59)
                    ),
                    textAlign: TextAlign.left,),

                  ),
                  
                ],),

              ),
              SizedBox(height: 15.0,),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                    width: 500.0,
                    height: 52.0,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                        labelText: 'full name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                        )
                      ),
                      controller: fullnamecontroller,
                    ),
                  ),
                  SizedBox(height: 22.0,),
                  Container(
                    width: 348.0,
                    height: 52.0,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                        labelText: 'email address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                        )
                      ),
                      controller: emailController
                    ),
                  ),
                  SizedBox(height: 22.0,),
                  Container(
                    width: 348.0,
                    height: 52.0,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                        )
                      ),
                      controller: passwordController,
                    ),
                  ),
                  SizedBox(height: 22.0,),
                  Container(
                    width: 348.0,
                    height: 52.0,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                        labelText: 'confirm password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                        )
                      ),
                      controller: confirmpasswordcontroller,
                    ),
                  ),
                  SizedBox(height: 22.0,),
                  Container(
                    width: 348.0,
                    height: 52.0,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color.fromRGBO(170, 173, 173, 100)
                      ),
                      decoration: InputDecoration(
                        labelText: 'phone number(optional)',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                        )
                      ),
                      controller: phonenumbercontroller,
                    ),
                  )
                  ],
                ),
              ),
              SizedBox(height:  30.0,),
              Row(
                children: <Widget>[
                  Text('Sex:',
                  style:TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Poppins',

                  ) ,),
                  SizedBox(width: 140.0,),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Poppins'
                    ),
                  ),
                  SizedBox(width: 70.0,),
                  Text(
                    'Female',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,

                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: <Widget>[
                  Text(
                    'Over age 18?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',

                    ),
                  ),
                  SizedBox(width: 60.0 ,),
                  Text(
                'Yes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0
                ),
              ),
              SizedBox(width: 80.0,),
              Text(
                'No',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Poppins'
                ),
              )
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
<<<<<<< HEAD
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
                      onPressed: (){},
                      child: Text("Post",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25.0,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600
                        ),


                        //   style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  )),

=======
                          height: 48.0,
                          width: 348.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            //shadowColor: Theme.of(context).accentColor,
                            color: Color(0xFF3FCC59),
                            //Theme.of(context).primaryColor,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: (){},
                              child: Center(
                                child: Text(
                                    'Sign Up',
                                style: Theme.of(context).textTheme.button,),
                              ),
                            ),
                          ),
                        ),

>>>>>>> 3b076039026168fe68ecd292a2551dcd7644bb0e
            ],
          ),
        ),
      ),
    );}}