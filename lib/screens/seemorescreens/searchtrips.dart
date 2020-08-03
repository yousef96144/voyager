import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../API/API.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import '.././tripdetails.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SearchTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateSearchTrips();
  }
}
class StateSearchTrips extends State<SearchTrips>{


 bool typing=false;


//final searchTripController=TextEditingController();
  List<dynamic> searchResults;
  var noResultMessage;

  Widget showSearchResult() {
    if(searchResults==null&&noResultMessage==null)
     {
       return  Container(
        //    height: MediaQuery.of(context).size.height * 0.6,
        color: Color(0xFFE5F3EB),
        child:  CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),

    )
      );
     }else if(searchResults!=null) {
      return Expanded(
        child: Container(
          color: Color(0xFFE5F3EB),
            child: SingleChildScrollView(
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,

                children:
                searchResults.map((tr){
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0 , horizontal: 5.0),
                    elevation: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.15,
                      color: Color(0xFFD0ECD8),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius:40,
                            backgroundColor: Color(0xFF053218),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FittedBox(
                                  child: Text('${tr["price_per_passenger"]} LE',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF3FCC59),
                                        fontFamily: 'Poppins'),)),
                            ),),
//                          trailing: IconButton(
//                            icon: Icon(Icons.delete),
//                            color: Theme.of(context).errorColor,
//                            onPressed: (){},
//                          ),
                          title: Text('${tr["from"] }  ->  ${tr["to"]}',
                            style: TextStyle(
                                fontSize: 15.0, fontFamily: 'Poppins',fontWeight: FontWeight.w700),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                      DateFormat.yMMMEd().format(DateTime.parse(tr["departure_date"]))),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    DateFormat.jm().format(DateTime.parse(tr["departure_date"])),
                                  ),
                                ],
                              ),
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
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>TripDetailsView(tr['id'],tr['user']['name'],tr['user']['rate'],tr['user']['id'])));

                          },

                        ),
                      ),
                    ),
                  );
                  //Card(child:


                }).toList()
                ,

              ),
            ),

        ),
      );
    }else if(noResultMessage!=null||searchResults[1]==null){
      return  Expanded(
        child: Container(
            //    height: MediaQuery.of(context).size.height * 0.6,
            color: Color(0xFFE5F3EB),
            child: Center(child: Text(noResultMessage!=null ?"$noResultMessage":"No trips found")),
        ),
      );
    }

}
  getSearchedTrips(text) async {
    print("\nwe are in searched trips\n");
    print('\nthe keyword is $text');
     setState(() {
       typing=true;
       searchResults=null;
       noResultMessage=null;
     });



    const String mainUrl ="trips/search";
    _setHeaders()=>{
      'Content-type' : 'application/json',
    };
    var data = {

      'keyword': text,

    };

    var res = await CallApi().postData(data, mainUrl, _setHeaders());

    var body = json.decode(res);

    print(body);

    var accepted=body["success"];
    if(accepted!=null){
      var userId;
      SharedPreferences userIdPreference=await SharedPreferences.getInstance();
      userId=userIdPreference.getInt("Id");
      List<dynamic> tempSearchResults=body["data"];

      for(var i=0;i<tempSearchResults.length;i++)
        {
          if(tempSearchResults[i]["user_id"]==userId)
            {
              tempSearchResults.removeAt(i);
            }
        }
      setState(() {
        searchResults=tempSearchResults;

      });
    }else{
      setState(() {
        noResultMessage=body["message"];
      });
    }




    print(searchResults);

//    setState(() {
//
//    });



  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, ),
              margin: EdgeInsets.only(top:30.0),
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                // border: Border.all(width: 5),
                // color: Color.fromRGBO(215, 215, 215, 100)
              ),
              child: Material(

                borderRadius: BorderRadius.circular(25.0),
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    // color: Color.fromRGBO(170, 173, 173, 100)
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    labelText: 'search trips',
                    hintText: '     from   &   Destination ',
                    hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF839195),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,


                    ),
                    labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF839195),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    contentPadding:
                    EdgeInsets.only(left: 20.0, top: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                  ),
                  onChanged: (text){
                    getSearchedTrips(text);

                  },
                ),
              ),
            ),
         
            showSearchResult(),

          ],
        )
    ) ;
  }

}