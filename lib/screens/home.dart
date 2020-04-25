import 'package:flutter/material.dart';
import 'homescreen/hello.dart';
import 'homescreen/search.dart';
import 'homescreen/recenttrips.dart';
import 'homescreen/topvoyager.dart';

//import 'package:voyager/trips.dart';

class Home extends StatefulWidget {
  //Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  //  void initState() {
  //    super.initState();
  //    print('navigate to home');
  //  }
  Widget myDrawer(){
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@emailcom'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(
          size: 42.0,
        ),
        backgroundColor: Colors.white,
      ),
    );

    final drawItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('to page 1'),
          //onTap: ,
        ),
        ListTile(
          title: Text('to page 2'),
        )
      ],
    );
    return drawItems;
  }
  @override
  Widget build(BuildContext context) {
    print('here is wedgit of home');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
          iconTheme: new IconThemeData(
            color: Colors.black,
          ),
          actions: <Widget>[
            Container(
              height:38.0,
              width: 38.0,

              decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage('assets/image/prolo.png')

                  )
              ),)
//            CircleImage(
//                radios: 20, imageProvider: AssetImage('image/Ellipse 4.png'))
          ],
        ),
        drawer: Drawer(
          child: myDrawer(),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

            Hello(),

            SizedBox(
              height: 5,
            ),

            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Ready for a new trip?',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // search area /////////
            Search(),

            SizedBox(
              height: 20,
            ),
            /////////////////////////////////////////Recently added/////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                'Recently added',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),

            RecentTrips(),

            SizedBox(
              height: 2.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                'Top voyagers',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
            TopVoyager(),
          ],
        ),


        // navigation bottom bar/////////////////


      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  CircleImage({this.imageProvider, this.radios = 20});

  final ImageProvider imageProvider;
  final double radios;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: radios,
          backgroundImage: imageProvider,
        )
      ],
    );
  }
}
