import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      height: 52.0,
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
            //hintText: 'search for a trip ',
            labelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF839195),
                fontSize: 15,
                fontWeight: FontWeight.w500),
            contentPadding:
            EdgeInsets.only(left: 20.0, top: 17.5, bottom: 17.5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD7D7D7)),
                borderRadius: BorderRadius.all(Radius.circular(25.0))
            ),
          ),
        ),
      ),
    );
  }

}