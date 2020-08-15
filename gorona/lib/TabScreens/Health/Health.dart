import 'package:flutter/material.dart';
import 'package:watson_assistant_v2/watson_assistant_v2.dart';
import 'package:bubble/bubble.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:gorona/secret.dart';
import './call.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HealthBot(),
    );
  }
}

class HealthBot extends StatefulWidget {
  @override
  _HealthBotState createState() => _HealthBotState();
}

class _HealthBotState extends State<HealthBot> {
  @override
  ClientRole _role = ClientRole.Broadcaster;
  bool _isWriting = false;
  bool trans = false;

  ///CREDENTIALS
  WatsonAssistantV2Credential credential = WatsonAssistantV2Credential(
    // TODO: change the credential to yours
    version: '2020-07-25',
    username: 'apikey',
    apikey: WatsonKey.WATSON_API_KEY, //API KEY
    assistantID: WatsonKey.WATSON_ASSISTANT_HEALTHBOT_ID, //WATSON ASSISTANT ID
    url: WatsonKey.WATSON_URL, //WATSON URL
  );

  WatsonAssistantApiV2 watsonAssistant;
  WatsonAssistantResponse watsonAssistantResponse;
  WatsonAssistantContext watsonAssistantContext =
  WatsonAssistantContext(context: {});

  final TextEditingController myController = TextEditingController();
  //messages stores the request and responses
  List<Map> messsages = List();
  bool _vidState = false;
  /// Responsible for the communication with the Watson Assistant
  void response(query) async {
    myController.clear();
    setState(() => _isWriting = false);
    watsonAssistantResponse =
    await watsonAssistant.sendMessage(query, watsonAssistantContext);
    setState(() {
      print(watsonAssistantResponse.resultText);
      messsages.insert(0, {
        "data": query,
        "message": watsonAssistantResponse.resultText,
      });

      ///To activate the map if user is trying to ask about relief centers for food,shelter and animals
     if (watsonAssistantResponse.resultText.substring(0, 14) ==
         "GENERAL DOCTOR") {
       setState(() {
         _vidState = true;
         print(watsonAssistantResponse.resultText.substring(0, 38));
       });
     } else if (watsonAssistantResponse.resultText.substring(0, 12) ==
         "PEDIATRICIAN") {
       setState(() {
         _vidState = true;
         print(watsonAssistantResponse.resultText.substring(0, 12));
       });
     } else if (watsonAssistantResponse.resultText.substring(0, 12) ==
         "PSYCHIATRIST") {
       setState(() {
         _vidState = true;
         print(watsonAssistantResponse.resultText.substring(0, 12));
       });
     }
    });

    watsonAssistantContext = watsonAssistantResponse.context;
  }

  @override
  void initState() {
    super.initState();
    watsonAssistant =
        WatsonAssistantApiV2(watsonAssistantCredential: credential);
    response("qwerty");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Health",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Plus",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10.0,
        leading: new IconButton(
          icon: Icon(
            Icons.restore,
            color: Colors.red,
          ),
          onPressed: () {
            watsonAssistantContext.resetContext();
            setState(() {
              messsages.clear();
              _vidState = false;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>onJoin(),
        tooltip: 'VideoCall',
        elevation: 20,
        backgroundColor: (_vidState) ? Colors.green : Colors.grey,
        child: Icon(
          Icons.video_call,
          color: (_vidState) ? Colors.white : Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Flexible(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messsages.length,
                    itemBuilder: (context, index) => chat(
                        messsages[index]["data"],
                        messsages[index]["message"]))),
            Divider(
              height: 1.0,
              color: Colors.redAccent[700],
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.mic),
                    color: (trans)? Colors.grey: Colors.redAccent[700] ,
                    onPressed: () {
                      setState(() {
                        trans = true;
                      });
                    },
                  ),
                  Flexible(
                    child: TextField(
                      controller: myController,
                      onChanged: (String txt) =>
                          setState(() => _isWriting = txt.length > 0),
                      onSubmitted: response,
                      decoration: InputDecoration.collapsed(
                          hintText: "Enter your message"),
                    ),
                  ),
                  Container(
//                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    child: IconButton(
                        icon: Icon(Icons.send, color: Colors.redAccent[700]),
                        onPressed: _isWriting
                            ? () {
                          response(myController.text);
                        }
                            : null),
                  )
                ],
              ),
            ),

            Divider(),
//            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget chat(String data, String message) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          (data != "qwerty")
              ? Bubble(
              radius: Radius.circular(15.0),
              color: Colors.black,
              elevation: 0.0,
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("asset/user.png"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                        child: Text(
                          data,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ))
              : Text(
            "initiate",
            style: TextStyle(color: Colors.transparent),
          ),
          SizedBox(height: 10),
          Bubble(
              radius: Radius.circular(15.0),
              color: Colors.redAccent[700],
              elevation: 0.0,
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftBottom,
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("asset/bot.png"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                        child: Text(
                          message,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )),
        ],
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
    myController.dispose();
    super.dispose();
  }
  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
