import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../API/API.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import './triprequest/makeoffer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TripDetailsView extends StatefulWidget {

  final int tripId;
  final String tripMakerName;
  final int rating;
  final int tripMakerId;
  TripDetailsView(
      this.tripId,
      this.tripMakerName,
      this.rating,
      this.tripMakerId
      );

  @override
  _TripDetailsViewState createState() => _TripDetailsViewState(tripId,tripMakerName,rating,tripMakerId);
}

class _TripDetailsViewState extends State<TripDetailsView> {
  final int tripId;
 final String tripMakerName;
 final int rating;
  final int tripMakerId;

  _TripDetailsViewState(
  this.tripId   ,
  this.tripMakerName,
      this.rating,
  this.tripMakerId

      );
  int userId;

  String from;
  String to;
  String car;
  int price;
  int seatsNum;
  String tripDate;
  String desc;
  String avatar;


  getOneTrip(BuildContext context) async {


    print("\nwe are in get one trip\n");
    SharedPreferences tokenLocalStorage = await SharedPreferences.getInstance();
    userId=tokenLocalStorage.getInt("Id");
print(tripId);
    print(tripMakerName);
    print(rating);

     String mainUrl ="trips/"+tripId.toString();
print(mainUrl);
    var res = await CallApi().getData(mainUrl);

    var body = json.decode(res);
    print(body);


setState(() {
from=body['data']["from"];
to=body['data']['to'];
car=body['data']['car_model'];
price=body['data']['price_per_passenger'];
seatsNum=body['data']['number_of_empty_seats'];
tripDate=body['data']['departure_date'];

});
  }
  void _startMakeNewOffer(BuildContext ctx){
    print("we entered startaddnewtrans");

    showModalBottomSheet(backgroundColor:Colors.greenAccent ,context: ctx, builder: (_){

      return Container(
        color: Colors.greenAccent,
        height: MediaQuery.of(context).size.height*0.3,
        child: GestureDetector(
          onTap: (){},
          child: MakeOffer(tripId),
          behavior: HitTestBehavior.opaque,
        ),
      );}
    );

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getOneTrip(context);

  }

  chooseButtonStatus(){

    print(userId);
    print(tripMakerId);
    if(userId!=tripMakerId){
      return Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.85,
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
            highlightColor:
            Colors.transparent, // makes highlight invisible too
            onPressed: ()=> _startMakeNewOffer(context),
            child: Text(
              "Send Request",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );
    }else if(userId==tripMakerId){
      return Container();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Trip Detail',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Cover image////////////////////////////////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width * 1,
              //color: Colors.black,
              child: Image(image: AssetImage('assets/image/covertrip.png'),fit: BoxFit.cover,),
            ),
            //s SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            // car details////////////////////////////////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height * 0.135,
              width: MediaQuery.of(context).size.width * 0.92,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child:Text('Car Details',style: TextStyle(fontSize: 18),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      Text("Car Model:",style: TextStyle(fontSize: 14,color:Color(0xFF3FCC59) ),),
                      Text(car!=null?" $car":""),  // variable////////////////////////////////////////
                      SizedBox(width: MediaQuery.of(context).size.width*.1,),
                      Text('Seats :',style: TextStyle(fontSize: 14,color:Color(0xFF3FCC59) ),),
                      Text(seatsNum!=null?'$seatsNum':"") //Variable////////////////////////////////////////////////////////

                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.005,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      Text("Car Plate :",style: TextStyle(fontSize: 14,color:Color(0xFF3FCC59)),),
                      Text('547 ط ص ق')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            // driver details////////////////////////////////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * .92,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Driver Details', style: TextStyle(fontSize: 18),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                  // Driver pic
                  Row(
                    children: <Widget>[
                      Container(
                        height:50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage("")
                            )
                        ),),
                      SizedBox(width:MediaQuery.of(context).size.width*0.05,),
                      Column(
                        children: <Widget>[
                          Text('$tripMakerName',style:TextStyle(fontSize:16 ),),
                          SizedBox(height: MediaQuery.of(context).size.height*0.009,),
                          SmoothStarRating(
                              allowHalfRating: true,

                              starCount: 5,
                              rating: 3.5,
                              size: 20.0,
                              //fullRatedIconData: Icons.blur_off,
                              //halfRatedIconData: Icons.blur_on,
                              color: Color(0xFF3FCC59),
                              borderColor:Color(0xFF3FCC59),
                              spacing:0.0
                          )
                        ],
                      )
                    ],
                  ),
                ],

              ),
            ),
            // trip details////////////////////////////////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.92,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Trip Details',style: TextStyle(fontSize: 18,),),
                  SizedBox(height: MediaQuery.of(context).size.height*.03,),
                  //Icon(Icons.d),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      Text('From :',style: TextStyle(fontSize: 14,color:Color(0xFF3FCC59) ),),
                      Text(from!=null?'$from':'',style: TextStyle(fontSize: 14),),  // Variable////////////////
                      SizedBox(width: MediaQuery.of(context).size.width*.20,),
                      Text('To :',style: TextStyle(fontSize: 14,color:Color(0xFF3FCC59) ),),
                      Text(to!=null?'$to':'',style: TextStyle(fontSize: 14),), //Variable//////////////////
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      Text('Price :',style: TextStyle(fontSize: 14,color: Color(0xFF3FCC59) ),),
                      Text(price!=null?'$price L.E':"") ,  //Variable////////////////////////
                      SizedBox(width: MediaQuery.of(context).size.width*.20,),
                      Text('Date :',style: TextStyle(fontSize: 14,color: Color(0xFF3FCC59) ),),
                      Text(tripDate!=null? DateFormat.yMMMEd().format(DateTime.parse(tripDate)):""),
                        //Variable///////////////////////
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      Text('Time:',style: TextStyle(fontSize: 12,color: Color(0xFF3FCC59) ),),
                      Text( tripDate!=null? DateFormat.jm().format(DateTime.parse(tripDate)):"",style: TextStyle(fontSize: 12),)   //Variable////////////////////////

                    ],
                  ),

                ],
              ),
            ),
            // send request button///////////////////////////////////////////////////////
            Center(
              child: userId==null?Container():chooseButtonStatus(),
            )
          ],
        ),
      ),
    );
  }
}
