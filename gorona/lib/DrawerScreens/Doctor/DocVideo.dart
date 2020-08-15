import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:gorona/secret.dart';
import 'package:gorona/TabScreens/Health/call.dart';

class DocVideo extends StatefulWidget {
  @override
  _DocVideoState createState() => _DocVideoState();
}

class _DocVideoState extends State<DocVideo> {
  ClientRole _role = ClientRole.Broadcaster;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pending",style: TextStyle(color: Colors.red),),
            Text(" Patients",style: TextStyle(color: Colors.black),)],),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.red,
              ),
              title: Text(
                'A.P.J.Abdul Kalam',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {onJoin();},
              trailing: Icon(Icons.video_call,color: Colors.green,),
            ),
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.red,
              ),
              title: Text(
                'Aravind S',
                style: TextStyle(color: Colors.red),
              ),
              onTap: ()=>onJoin(),
              trailing: Icon(Icons.video_call,color: Colors.green,),
            ),
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.red,
              ),
              title: Text(
                'M Harini',
                style: TextStyle(color: Colors.red),
              ),
              onTap: ()=>onJoin(),
              trailing: Icon(Icons.video_call,color: Colors.green,),
            ),
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.red,
              ),
              title: Text(
                'K Oviyaa',
                style: TextStyle(color: Colors.red),
              ),
              onTap: ()=>onJoin(),
              trailing: Icon(Icons.video_call,color: Colors.green,),
            ),
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text(
                'R.Sangamithrai',
                style: TextStyle(color: Colors.black),
              ),
              onTap: ()=>onJoin(),
              trailing: Icon(Icons.video_call),
            ),
            new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text(
                'A.Dinesh',
                style: TextStyle(color: Colors.black),
              ),
              onTap: ()=>onJoin(),
              trailing: Icon(Icons.video_call),
            )
          ],
        ),
      ),
    );
  }
  Future<void> onJoin() async {

    // await for camera and mic permissions before pushing video page
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
          channelName: 'abc',
          role: _role,
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
