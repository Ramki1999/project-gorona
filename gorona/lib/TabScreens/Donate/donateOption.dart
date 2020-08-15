import 'package:flutter/material.dart';
import 'package:gorona/Widgets/AppDrawer.dart';
import 'donate.dart';
import 'package:page_transition/page_transition.dart';

///Used to display the various donations required to raise the relief funds for the COVID-19 damage in the country.
///The data used here is static however once the server is deployed
class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Covid-19 ",style: TextStyle(color: Colors.red),),
              Text("Donate",style: TextStyle(color: Colors.black),)],),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10.0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "DONATE",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "#PM Cares",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Donate())),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'asset/PM.jpeg',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "#WHO research funds",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Donate())),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'asset/who.png',
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        )),
                  )
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "#IndiaAgainstCoronaVirus",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Donate())),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'asset/give.png',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ))
            ],
          ),
        ),
    );
  }
}
