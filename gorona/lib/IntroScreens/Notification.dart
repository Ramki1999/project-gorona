import 'package:flutter/material.dart';
import 'package:gorona/DrawerScreens/Emergency/VHealth.dart';
import 'package:gorona/TabScreens/Home/home.dart';


///Uses FCM to send Push notifications to the app.
///Data used here are static. However once the server is deployed, everything will be dynamic
class NotiBell extends StatefulWidget {
  @override
  _NotiBellState createState() => _NotiBellState();
}

class _NotiBellState extends State<NotiBell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "COVID ",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 9.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                show = null;
              });
            },
          )
        ],
      ),
      body: (show == null)
          ? Center(child: Text("No Notifications"))
          : Container(decoration: BoxDecoration(color: Colors.grey,border: Border.all(color: Colors.red),),padding:EdgeInsets.all(30),child:GestureDetector(onTap: (){Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => VHealthCheckup()));},child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'asset/notif.jpeg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
          )),))
    );
  }
}
