import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/screens/profilescreen/images.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:rating_bar/rating_bar.dart';

enum DriverFeedback { Excellent, Good , Average, Bad ,VeryBad  }

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateProfile();
  }
}

class _StateProfile extends State<Profile> {

  DriverFeedback _driverVal = DriverFeedback.Excellent;

  @override
  Widget build(BuildContext context) {
    print('here is wedgit of profile');

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: <Widget>[
                  Images(),

                  Container(
                    decoration: BoxDecoration(
//                        border: Border.all(width: 2)
                    ),
                    child: Column(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
//                            border: Border.all(width: 2)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                height: MediaQuery.of(context).size.height * .01),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.66,
                              decoration:
                              BoxDecoration(
                                //   border: Border.all(width: 2)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    "Mustafa Rostom",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        letterSpacing: .5,
                                        color: Color(0xFF2B2B2B)),
                                      textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),

                                     Icon(
                                       Icons.check_circle,
                                        color: Color(0XFF3FCC59),
                                      ),


                                ],
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        //  padding: EdgeInsets.only(right:100),
                        decoration: BoxDecoration(
                          //  border: Border.all(width: 2)
                        ),
                        child: Text(
                          "01255252651",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Color(0xFF2B2B2B)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        //  padding: EdgeInsets.only(right:100),
                        decoration: BoxDecoration(
                          // border: Border.all(width: 2)
                        ),
                        child: Text(
                          "MyGmail@gmail.com",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF2B2B2B)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 150,
                                height: 20,
                                child: RatingBar(
                                  initialRating: 3,
                                  maxRating: 5,
                                  onRatingChanged: (rating) {
                                    print(rating);
                                  },
                                  filledColor: Color(0xFFFFC107),
                                  emptyColor: Color(0xFFB8B8B8),
                                  size: 25,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 2.0),
                                height: 20,
                                child: Text(
                                  "(250+ feedback)",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      letterSpacing: .5,
                                      color: Color(0xFFB8B8B8)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Material(
                                child: Container(
                                  padding: EdgeInsets.only(top: 6),

                                  child: IconButton(
                                    iconSize: 25.0,
                                    icon: Icon(Icons.chat_bubble,color: Color(0xFF3FCC59)),
                                   //   color: Color(0xFF3FCC59),

                                    onPressed: () {},
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors
                                        .transparent, // makes highlight invisible too
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Center(
                        child: Container(
                          width: 323,
                          height: 62,
                          child: Text("The trip has been completed successfully, give your feedback..", style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: .5,
                              color: Color(0xFF3FCC59)),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: DriverFeedback.Excellent,
                              groupValue: _driverVal,
                              onChanged: (DriverFeedback value) {
                                setState(() { _driverVal = value; });
                              },
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: Text("Excellent Driver", style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: .5,
                                  color: Color(0xFF2B2B2B)),),)
                          ],),),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),

                        child: Row(
                          children: <Widget>[
                            Radio(
                              materialTapTargetSize: MaterialTapTargetSize.padded,
                              value: DriverFeedback.Good,
                              groupValue: _driverVal,
                              onChanged: (DriverFeedback value) {
                                setState(() { _driverVal = value; });
                              },
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: Text("Good Driver", style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: .5,
                                  color: Color(0xFF2B2B2B)),),)
                          ],),),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),

                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: DriverFeedback.Average,
                              groupValue: _driverVal,
                              onChanged: (DriverFeedback value) {
                                setState(() { _driverVal = value; });
                              },
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: Text("Average Driver", style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: .5,
                                  color: Color(0xFF2B2B2B)),),)
                          ],),),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),

                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: DriverFeedback.Bad,
                              groupValue: _driverVal,
                              onChanged: (DriverFeedback value) {
                                setState(() { _driverVal = value; });
                              },
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: Text("Bad Driver", style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: .5,
                                  color: Color(0xFF2B2B2B)),),)
                          ],),),
                      Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2),

                        child: Row(
                          children: <Widget>[
                            Radio(

                              value: DriverFeedback.VeryBad,
                              groupValue: _driverVal,
                              onChanged: (DriverFeedback value) {
                                setState(() { _driverVal = value; });
                              },
                            ),
                            SizedBox(width: 20,),
                            Container(
                              child: Text("Very Bad Driver", style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  letterSpacing: .5,
                                  color: Color(0xFF2B2B2B)),),)
                          ],),),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.05,
                      ),
                      Container(
                          height: 65.0,
                          width:  MediaQuery.of(context).size.width*0.86,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            //shadowColor: Theme.of(context).accentColor,
                            color: Color(0xFF3FCC59),
                            //Theme.of(context).primaryColor,
                            elevation: 7.0,
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text("Confirm",
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.05,
                      ),
                    ]),
                  ),

                ])
            )
        )
    );
  }
}
