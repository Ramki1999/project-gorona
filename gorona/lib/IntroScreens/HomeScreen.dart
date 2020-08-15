import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:gorona/TabScreens/Donate/donateOption.dart';
import 'package:gorona/TabScreens/Home/home.dart';
import 'package:gorona/TabScreens/CovidBot/HelpBot.dart';
import 'package:gorona/TabScreens/Educate/Educate.dart';
import 'package:gorona/TabScreens/Health/Health.dart';
double uLat, uLng; //get user Location
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
//  TabController _controller;

  _getCurrentLocation() async {
    final _currentPosition = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(_currentPosition.longitude);
    print(_currentPosition.latitude);
    setState(() {
      if (_currentPosition != null) {
        uLat = _currentPosition.latitude;
        uLng = _currentPosition.longitude;
      }
    });
  }

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
//    _controller = TabController(length: 5, vsync: this, initialIndex: 2)
//      ..addListener(() => setState(() => {}));
  }

  @override
  void dispose() {
//    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          //Drawer Screen with multiple options
          bottomNavigationBar: new Material(
              elevation: 24,
              child: new TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.redAccent[700],
                  labelStyle: TextStyle(fontSize: 12.0),
                  tabs: <Tab>[
                    new Tab(
                      icon: new Icon(Icons.people),
                    ),
                    new Tab(
                      icon: new Icon(Icons.local_hospital),
                    ),
                    new Tab(
                      icon: Text("\n\nHome",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    new Tab(
                      icon: new Icon(Icons.school),
                    ),
                    new Tab(
                      icon: new Image.asset("asset/donate.png"),
                    ),
                  ])),
          body: new TabBarView(children: <Widget>[
            // All the Class goes here
            HelpBot(),
            Health(),
            HomePage(),
            Educate(),
            DonatePage(),
          ]),
          floatingActionButton:FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: Colors.redAccent[700],
            splashColor: Colors.red,
            child: Icon(Icons.home),
            onPressed: (){
//              Navigator.of(context).pop();
//              Navigator.of(context).push(new MaterialPageRoute(
//                builder: (BuildContext context) => HomePage(),));
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
//            ),
      ),
    );
  }
}
