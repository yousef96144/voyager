import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/screens/profilescreen/ShowMyTripsAndOffer.dart';
import 'package:voyager/screens/profilescreen/myprofileimages.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../API/API.dart';
import 'dart:convert';




class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateMyProfile();
  }
}

class _StateMyProfile extends State<MyProfile> {


  String myName;
  String avatar="assets/image/users/default.png";
  String email;
  String phone;

  getUserInfo(BuildContext context) async {

    SharedPreferences tokenLocalStorage=await SharedPreferences.getInstance();
    String currentToken=tokenLocalStorage.getString('token');

    print("\nwe are in get user info\n");
    print(currentToken);
    String authentication= 'Bearer ' + currentToken;
    print(authentication);
    _setHeaders()=>{
//      'Content-type' : 'application/json',
      "Accept": 'application/json',
      "Authorization": authentication
    };
    var data = {



    };
    const String mainUrl ="auth/getUser";


    var res = await CallApi().postData(data,mainUrl,_setHeaders());




    var body = json.decode(res);

    print(body);

    print(body["success"]);
    setState(() {
      myName=body["success"]["name"];
      email=body["success"]["email"];
      phone=body["success"]["phone_number"];
      avatar="assets/image/"+(body["success"]["avatar"]);
      tokenLocalStorage.setInt("Id", body["success"]["id"]);
    });



  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserInfo(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
          builder: (context)=>SingleChildScrollView(
              child: Container(
                  child: Column(children: <Widget>[

               MyProfileImages(myName,email,phone),

                    Container(
                      decoration: BoxDecoration(
                        //border: Border.all(width: 2)
                      ),
                      child: Column(children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            //  border: Border.all(width: 2)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  height: MediaQuery.of(context).size.height * .01),
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.65,
                                  decoration:
                                  BoxDecoration(
                                    //   border: Border.all(width: 2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "$myName",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            letterSpacing: .5,
                                            color: Color(0xFF2B2B2B)),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Icon(
                                        Icons.check_circle,
                                        color: Color(0XFF3FCC59),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          //  padding: EdgeInsets.only(right:100),
                          decoration: BoxDecoration(
                            //  border: Border.all(width: 2)
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                phone==null?
                                    "phone number"
                               : "$phone",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    color: Color(0xFF2B2B2B)),
                              ),
                              SizedBox(width: 10.0,),
                              InkWell(
                                onTap: (){},
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xFF2B2B2B),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          //  padding: EdgeInsets.only(right:100),
                          decoration: BoxDecoration(
                            // border: Border.all(width: 2)
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "$email",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0xFF2B2B2B)),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(width: 10.0,),
                              InkWell(
                                onTap: (){},
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xFF2B2B2B),
                                ),
                              )
                            ],
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
                                  child: RatingBar.readOnly(
                                    initialRating: 3,
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
                                Container(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Material(
                                    child: IconButton(
                                      iconSize: 25.0,
                                      icon: Icon(
                                        Icons.notifications,
                                        color: Color(0xFF3FCC59),
                                      ),
                                      onPressed: () {},
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors
                                          .transparent, // makes highlight invisible too
                                    ),
                                  ),
                                ),

                              ],
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),


                      ]),
                    ),
                      ProfileTabsView(context)
                  ]
                  )
              )
          ),
        )
    );
  }
}
