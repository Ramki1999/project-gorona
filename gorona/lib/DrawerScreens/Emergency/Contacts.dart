import 'package:flutter/material.dart';
import 'call_service.dart';

///Shows the necessary contacts during an emergency situation
///Note that the numbers used here are static and not valid, However once the server is established location based caching of Emergency numbers can be done.
class Helplines extends StatelessWidget {
  final CallService _service = locator<CallService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Emergency",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Contacts",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 9.0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.redAccent[100],
                  child: Text("N",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 20),)
                ),
                title: Text("National Helpline Number",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  _service.call("1075");
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.greenAccent,
                    child: Text("S",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 20),)
                ),
                title: Text("State Helpline Number",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  _service.call("044-29510500");
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('asset/doctor.jpg'),
                  ),
                ),
                title: Text("NDMA/SDMA",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  _service.call("9840984089");
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('asset/med+.jpeg'),
                  ),
                ),
                title: Text(
                  "Medical Emergency",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _service.call("108");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
