import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/screens/profilescreen/background.dart';

class Images extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StateImages();
  }

}
class _StateImages extends State<Images>{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[

        Background(),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          child: Container(
            height: MediaQuery.of(context).size.height*0.245,
            width: MediaQuery.of(context).size.width*0.465,
            decoration: BoxDecoration(
                border: Border.all(width:5.0,color: Colors.white),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0, // has the effect of softening the shadow
                    spreadRadius: 5.0, // has the effect of extending the shadow
                    offset: Offset(
                      10.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image/profile.png'),
                    fit: BoxFit.cover
                )),
            child: Container(
              height: MediaQuery.of(context).size.height*0.245,
              width: MediaQuery.of(context).size.width*0.465,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),
              child: Stack(children: <Widget>[
                Positioned(
                    top: 30,
                    right: 5,
                    child: Container(
                      width: 20.0,
                      height: 20.0,

                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.white,width: 2),
                        borderRadius: BorderRadius.circular(20.0),

                      ),
                    )
                )
              ],
              ),
            ),
          ),
        )
      ]),
    );
  }

}