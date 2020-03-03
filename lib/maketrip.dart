import 'package:flutter/material.dart';

class MakeTrip extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TripState();
  }

}
class _TripState extends State<MakeTrip>{
  @override
  final startUp=TextEditingController();
  final destination=TextEditingController();
  final carModelController=TextEditingController();
  final priceController=TextEditingController();
  final messageController=TextEditingController();
  final dayController=TextEditingController();
   TimeOfDay _recentTime=TimeOfDay.now();

     List<String> _numOfPasses=["1","2","3","4"];
  var currentItemSelected='1';


  void _tripTimePicker(){
   showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
     builder: (BuildContext context, Widget child) {
       return Directionality(
         textDirection: TextDirection.rtl,
         child: child,
       );
     },
    ).then((pickedTime){
      if(pickedTime==null)
      {
        return ;
      }
      setState(() {
        _recentTime=pickedTime;
      });
    });
  }
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
           /* width: 414.0,
            height: 312.0,*/
          height: MediaQuery.of(context).size.height*0.3999,
          width: MediaQuery.of(context).size.width*1.0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  // border: Border.all(width: 2.0)
                ),
                height: 108.0,
                width: 346.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Make a ",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 40.0,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "TRIP ",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 40.0,
                              color: Color(0xFF3FCC59),
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "Bibendum etiam ut sit quam ultrices elementum, morbi.Bibendum etiam",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w100
                      ),
                      textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),bottomRight: Radius.circular(50.0)),
              image: DecorationImage(
                fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Color(0xFF000000).withOpacity(0.4), BlendMode.darken),
                  image: AssetImage("image/Background.png",)
            )
          ),

        ),
        SizedBox(
          height: 30,
        ),
/////////////////////////////////////////////////////////////////////////
        Container(
          width: MediaQuery.of(context).size.width* 0.86,
          height: 100,
          padding: EdgeInsets.only(left: 5.0,),
          child: Row(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width* 0.40,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
///////////////////////////////////////////////////////////////////// From
                Container(
                  width: 48.0,
                  height: 29.0,
                  child: Text(
                      "From",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.0,
                        color: Color(0xFF3FCC59),
                        fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.start,
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 56.0,
                  width: MediaQuery.of(context).size.width* 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xFFE9EFF1)
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.characters,
                    autocorrect: true,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195),
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.5,horizontal: 40.0),
                        labelText: 'ismailia' ,
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF839195),
                          fontSize: 18
                        ) ,

                    border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),

                    )
                    ),
                    controller: startUp,
                    //  onSubmitted: (_) => _submitData() ,


                  ),
                )
              ],

              ),
            ),
///////////////////////////////////////////////////////////////////////
            SizedBox(
              width:  MediaQuery.of(context).size.width* 0.04,
            ),
/////////////////////////////////////////////////////////////////////////
            Container(
              width: MediaQuery.of(context).size.width* 0.40,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
/////////////////////////////////////////////////////////////////////// TO
                Container(
                  width: 48.0,
                  height: 29.0,
                  child: Text(
                    "To",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.0,
                        color: Color(0xFF3FCC59),
                        fontWeight: FontWeight.w600
                    ),
                  ),

                ),
                  SizedBox(
                    height: 10.0,
                  ),
                Container(
                  height: 56.0,
                  width: MediaQuery.of(context).size.width* 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      //  border: Border.all(width: 5),
                      color: Color(0xFFE9EFF1)
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.characters,
                    autocorrect: true,


                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195)
                    ),
                    decoration: InputDecoration(
                        labelText: 'Dest' ,
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF839195),
                            fontSize: 18
                        ) ,
                      contentPadding: EdgeInsets.symmetric(vertical: 17.5,horizontal: 40.0),
                      border:
                        OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none)
                      ),
                    ),
                    controller: destination,
                    //  onSubmitted: (_) => _submitData() ,


                  ),
                )
              ],

              ),

            )
          ],
          ),
        ),
 ////////////////////////////////////////////////////////////////////////////////
        SizedBox(
          height: 15,
        ),
 ///////////////////////////////////////////////////////////////////////////
        Container(
          width: MediaQuery.of(context).size.width* 0.86,
          height: 100,
          padding: EdgeInsets.only(left: 5.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
///////////////////////////////////////////////////////////////////////Car Model
                  Container(
                    width: 120.0,
                    height: 29.0,
                    child: Text(
                      "Car Model",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          color: Color(0xFF3FCC59),
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.start,
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 56.0,
                    width: MediaQuery.of(context).size.width* 0.84,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFE9EFF1)
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      textCapitalization: TextCapitalization.characters,
                      autocorrect: true,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195),
                      ),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none)
                          ),
                          labelText: 'Car Model' ,
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF839195),
                              fontSize: 18
                          ) ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        icon: Icon(Icons.local_taxi),

                      ),
                      controller: carModelController,
                      //  onSubmitted: (_) => _submitData() ,
                    ),
                  )
                ],

              ),
            ),
////////////////////////////////////////////////////////////////////////////////////////////////////
        SizedBox(
          height: 15,
        ),
////////////////////////////////////////////////////////////////////////
       Container(
        width: MediaQuery.of(context).size.width* 0.86,
        height: 100,
        padding: EdgeInsets.only(left: 5.0,),
        child: Row(children: <Widget>[
         Container(
          width: MediaQuery.of(context).size.width* 0.40,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
///////////////////////////////////////////////////////////////////////////////// EGPPRICE

            Container(
              width: 164.0,
              height: 28.0,
              child: Text(
                 "Price For Pass",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  color: Color(0xFF3FCC59),
                  fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.start,
                  ),
                 ),
            SizedBox(
            height: 10.0,
             ),
           Container(
            height: 56.0,
            width: MediaQuery.of(context).size.width* 0.40,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xFFE9EFF1)
              ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    color: Color(0xFF839195),
                ),
                decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 17.5,horizontal: 40.0),
                labelText: 'egp' ,
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF839195),
                    fontSize: 18
                    ) ,

                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),

                )
                ),
                controller: priceController,
                //  onSubmitted: (_) => _submitData() ,
                ),
                    )
                  ],),
                ),
          SizedBox(
          width: MediaQuery.of(context).size.width* 0.04,
          ),
//////////////////////////////////////////////////////////////////number of passes
          Container(
            width: MediaQuery.of(context).size.width* 0.40,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 28.0,
                  child: Text(
                    "Number Of Passes",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xFF3FCC59),
                        fontWeight: FontWeight.w600
                    ),
                  ),

                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  height: 56.0,
                  width:  MediaQuery.of(context).size.width* 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      //  border: Border.all(width: 5),
                      color: Color(0xFFE9EFF1)
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20.0),
                    child: DropdownButton<String>(
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF839195),
                          fontSize: 18
                      ),
                      isExpanded: true,
                      items: _numOfPasses.map((String dropDownStringItems){
                        return DropdownMenuItem<String>(
                          value: dropDownStringItems,
                          child: Text(dropDownStringItems),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected){
                        setState(() {
                          this.currentItemSelected=newValueSelected;
                        });
                      },
                      value: currentItemSelected,
                    ),
                  ) ,
                )
              ],

            ),

          )
            ]),
      ),
       SizedBox(
          height: 15.0,
        ),
///////////////////////////////////////////////////////////////////////////////Time Picker
      Container(
          width:MediaQuery.of(context).size.width* 0.86,
          height: 100,
          padding: EdgeInsets.only(left: 5.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
///////////////////////////////////////////////////////////////////////
              Container(
                width: 120.0,
                height: 29.0,
                child: Text(
                  "Time",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      color: Color(0xFF3FCC59),
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.start,
                ),

              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 56.0,
                width:MediaQuery.of(context).size.width* 0.84,
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

                    onPressed: ()=>_tripTimePicker(),
                      child: Row(
                        children: <Widget>[
                          Padding(

                            padding:  EdgeInsets.only(left:100.0,right: 30),
                            child: Text(_recentTime==TimeOfDay.now() ?
                                    "Pick Time"
                                :MaterialLocalizations.of(context).formatTimeOfDay(_recentTime,alwaysUse24HourFormat: false),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 18,
                                    ),
                                    ),
                          ),
                          Icon(Icons.watch_later, color: Colors.white,size: 40.0,),

                        ],
                      )

                  //   style: Theme.of(context).textTheme.button,
      ),
      ),
      ),




            ],

          ),
        ),
       SizedBox(
          height: 15.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width* 0.86,
          height: 100,
          padding: EdgeInsets.only(left: 5.0,),
          child: Row(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width* 0.24,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
///////////////////////////////////////////////////////////////////// DAY
                  Container(
                    width: 48.0,
                    height: 29.0,
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          color: Color(0xFF3FCC59),
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.start,
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 56.0,
                    width: MediaQuery.of(context).size.width* 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFE9EFF1)
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195),
                      ),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none)
                          ),
                          contentPadding:  EdgeInsets.only(left: 25.0,top: 28.0),
                          labelText: 'DD' ,
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF839195),
                              fontSize: 15
                          ) ,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),

                          )
                      ),
                      controller: dayController,
                      //  onSubmitted: (_) => _submitData() ,


                    ),
                  )
                ],

              ),
            ),
///////////////////////////////////////////////////////////////////////
            SizedBox(
              width: MediaQuery.of(context).size.width* 0.02,
            ),
/////////////////////////////////////////////////////////////////////////
            Container(
              width: MediaQuery.of(context).size.width* 0.24,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
/////////////////////////////////////////////////////////////////////// Month

                  SizedBox(
                    height: 39.0,                  ),
                  Container(
                    height: 56.0,
                    width:  MediaQuery.of(context).size.width* 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        //  border: Border.all(width: 5),
                        color: Color(0xFFE9EFF1)
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,

                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          color: Color(0xFF839195)
                      ),
                      decoration: InputDecoration(
                        labelText: 'MM' ,
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF839195),
                            fontSize: 15
                        ) ,
                        contentPadding:  EdgeInsets.only(left: 25.0,top: 28.0),
                        border:
                        OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none)
                        ),
                      ),
                      controller: dayController,
                      //  onSubmitted: (_) => _submitData() ,


                    ),
                  )
                ],

              ),

            ),
            SizedBox(
              width: MediaQuery.of(context).size.width* 0.02,
            ),
          Container(
            width: MediaQuery.of(context).size.width* 0.28,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
/////////////////////////////////////////////////////////////////////// YEAR
                SizedBox(
                height: 39.0,                  ),
                Container(
                  height: 56.0,
                  width:  MediaQuery.of(context).size.width* 0.27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      //  border: Border.all(width: 5),
                      color: Color(0xFFE9EFF1)
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195)
                    ),
                    decoration: InputDecoration(
                      labelText: 'YYYY' ,
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF839195),
                          fontSize: 15
                      ) ,
                      contentPadding:  EdgeInsets.only(left: 30.0,top: 28.0),
                      border:
                      OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none)
                      ),
                    ),
                  //  controller: ,
                    //  onSubmitted: (_) => _submitData() ,


                  ),
                )
              ],

            ),

          )
          ],),
        ),
///////////////////////////////////////////////////////////////////////////////////////////
       SizedBox(
          height: 15.0,
        ),
            Container(
              width: MediaQuery.of(context).size.width*0.86,
              height: 249.0,
              padding: EdgeInsets.only(left: 5.0,),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
///////////////////////////////////////////////////////////////////// Message
                   Container(
                       width: 164.0,
                       height: 28.0,
                       child: Text(
                          "Message",
                          style: TextStyle(
                               fontFamily: 'Poppins',
                               fontSize: 18.0,
                                color: Color(0xFF3FCC59),
                                fontWeight: FontWeight.w600
                          ),
                         textAlign: TextAlign.start,
                    ),

                   ),
               SizedBox(
                height: 10.0,
                ),
               Expanded(
                 child: Container(
                   width: MediaQuery.of(context).size.width*0.85,
                   height: 205.0,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30.0),
                       color: Color(0xFFE9EFF1)
                    ),
                   child: TextField(
                     scrollPadding: EdgeInsets.all(205.0),
                     textCapitalization: TextCapitalization.sentences,
                     autocorrect: true,
                     maxLines: 100,
                     textAlign: TextAlign.start,
                    style: TextStyle(
                       fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Color(0xFF839195),
                    ),
                    decoration: InputDecoration(
                        hintText: "Insert your message",
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF839195),
                            fontSize: 18
                        ),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none)
                    ),
                    contentPadding: EdgeInsets.only(left: 20,top: 30 , right: 20),
                    labelText: 'type something' ,
                    labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF839195),
                        fontSize: 18
                    ) ,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    )
                    ),
                    controller: messageController,
                    //  onSubmitted: (_) => _submitData() ,


    ),
    ),
               )
    ],

    ),
    ),
//////////////////////////////////////////////////////////////////////////POST button
        SizedBox(
          height: 15.0,
        )
        ,
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
        SizedBox(
          height: 50.0,
        )
     ] ),
    );
  }

}