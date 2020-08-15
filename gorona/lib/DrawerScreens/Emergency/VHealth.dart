import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:gorona/TabScreens/Health/call.dart';
import 'package:permission_handler/permission_handler.dart';
class VHealthCheckup extends StatefulWidget {
  @override
  _VHealthCheckupState createState() => _VHealthCheckupState();
}

class _VHealthCheckupState extends State<VHealthCheckup> {
  int temp;
  bool boolv;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Virtual ",style: TextStyle(color: Colors.red),),
              Text("Covid Checkup",style: TextStyle(color: Colors.black),)],),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10.0,
    ),floatingActionButton: FloatingActionButton.extended(label: Text("Talk to a professional"),onPressed: (){onJoin();},icon: Icon(Icons.video_call),),body: SingleChildScrollView(
          child: Container(padding: const EdgeInsets.all(20),child: Column(children: <Widget>[
      SizedBox(height: 30),    
      Text("Take your periodic virtual corona test to make the frontliners work easy and to take good self care",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      Center(child: Text("Prevention is Better than cure",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),),
      Text("1) Do you have any fever, cold, cough, breathing issues.If yes mention them bellow",style: TextStyle(fontSize: 16),),
      Padding(padding: const EdgeInsets.only(left: 110,right:110),child: TextField(),),
      SizedBox(height: 20,),
       Container(
                      decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                      padding: const EdgeInsets.all(5.0),
                      child: new DropdownButton(
                          hint: new Text('SELECT TEMPERATURE LEVEL (approx)',style: TextStyle(fontWeight: FontWeight.bold,),),
                          value: temp,
                          items: <DropdownMenuItem>[
                            new DropdownMenuItem(
                              child: new Text('< 30° C'),
                              value: '30',
                            ),
                            new DropdownMenuItem(
                              child: new Text('< 60° C'),
                              value: '60',
                            ),
                            new DropdownMenuItem(
                              child: new Text('< 100° C'),
                              value: '100',
                            ),
                            new DropdownMenuItem(
                              child: new Text('> 100° C'),
                              value: '120',
                            ),
                          ],
                          onChanged: (value) => setState(() => temp = value)),
                    ),
                    SizedBox(height: 20,),
                Text("2) Any pain in chest or while breathing", style: TextStyle(fontSize: 16),),
                Column(children: <Widget>[Row(children: <Widget>[Text("YES",style: TextStyle(fontWeight: FontWeight.bold),),Radio(value: boolv,groupValue: bool,onChanged:(value){},activeColor: Colors.black,)],),Row(children: <Widget>[Text("NO",style: TextStyle(fontWeight: FontWeight.bold),),Radio(value: boolv,groupValue: bool,onChanged:(value){} ,activeColor: Colors.black,)],)],),
                SizedBox(height: 30,),
                Text("3) On a scale from 1 to 10 type the pain level",style: TextStyle(fontSize: 16),),
                Padding(padding: EdgeInsets.only(right: 120,left:120),child: TextField(),),
                SizedBox(height: 30,),
                RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.redAccent,
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),

      ],),),
    ),);
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
            role: ClientRole.Broadcaster,
          ),
        ),
      );
    }
      Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
