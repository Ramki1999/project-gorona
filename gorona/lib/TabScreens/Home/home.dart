import 'package:flutter/material.dart';
import 'dart:async';
import './NewsWidgets/widgets.dart';
import './NewsWidgets/news.dart';
import 'package:gorona/Widgets/Hyperlink.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gorona/Widgets/covid_values.dart';
import 'package:gorona/IntroScreens/Notification.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gorona/Widgets/AppDrawer.dart';

const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
const kTitleTextColor = Color(0xFF303030);
const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);
const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);
const kTextLightColor = Color(0xFF959595);
Map<String, dynamic> show;
class Counter extends StatelessWidget {
  final String number;
  final Color color;
  final String title;
  const Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "$number",
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
        Text(title, style: kSubTextStyle),
      ],
    );
  }
}

class CustomTheme {
  static Color colorAccent = Color(0xff007EF4);
  static Color textColor = Color(0xff071930);
}
// Colors
const kBackgroundColor = Color(0xFFFEFEFE);

const kBodyTextColor = Color(0xFF4B4B4B);

const kPrimaryColor = Color(0xFF3382CC);
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);
List covid = [['orld[e]', '15,231,569', '623,461', '8,644,885' ], ['ndia', '1,238,635', '29,861', '782,607' ]];
// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final FirebaseMessaging _fcm = FirebaseMessaging();
  // final Completer<WebViewController> _controller = Completer<WebViewController>();
  bool _loading;
  var newslist;

  void getNews() async {
    News news = News();
    List result =new List();
    await news.getNews();
    result = await CovidScrap();
    newslist = news.news;
    setState(() {
      _loading = false;
      covid = result;
      print(covid);
    });
  }

  @override
  void initState() {
    _loading = true;
    super.initState();
    getNews();
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        setState(() {
          show = message;
        });
        print("onMessage: $message");

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(
                message['notification']['title'],
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                  NotiBell(); //Notification Screen
                },
                color: Colors.red,
              ),
            ],
          ),
        );
      },
      onLaunch: (Map<String, dynamic> message) async {
        setState(() {
          show = message;
        });
        print("onLaunch: $message");

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(
                message['notification']['title'],
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                  NotiBell(); //Notification Screen
                },
                color: Colors.red,
              ),
            ],
          ),
        );
      },
      onResume: (Map<String, dynamic> message) async {
        setState(() {
          show = message;
        });
        print("onResume: $message");

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(
                message['notification']['title'],
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                  NotiBell(); //Notification Screen
                },
                color: Colors.red,
              ),
            ],
          ),
        );
      },
    );

    _fcm.getToken().then((token) {
      update(token);
    });
  }

  update(String token) {
    print(token);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("Gorona", style: TextStyle(color: Colors.red)),
          centerTitle: true,

          ///Alert Notification - Gives you alert and suggestions during Disaster times
          actions: <Widget>[
            IconButton(
                icon: (show != null)
                    ? Icon(Icons.notifications_active, color: Colors.red)
                    : Icon(Icons.notifications, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: NotiBell()));
                })
          ],
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child:Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "India - Case Update\n",
                            style: kTitleTextstyle,
                          ),
                          TextSpan(
                            text: "Updated every 1 hour",
                            style: TextStyle(
                              color: kTextLightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Hyperlink('https://www.covid19india.org','Source - WHO'),
                  ],
                ),

                SizedBox(height: 10),
                SafeArea(
                  child: Container(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://www.covid19india.org',
                            );
                          },
                        ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Counter(
                              color: kInfectedColor,
                              number: covid[1][1],
                              title: "Total",
                            ),
                            Counter(
                              color: kDeathColor,
                              number: covid[1][2],
                              title: "Deaths",
                            ),
                            Counter(
                              color: kRecovercolor,
                              number: covid[1][3],
                              title: "Recovered",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Worldwide - Case Update\n",
                            style: kTitleTextstyle,
                          ),
                          TextSpan(
                            text: "Updated every 2 hours",
                            style: TextStyle(
                              color: kTextLightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Hyperlink('https://covid19.who.int/','Source - WHO'),
                  ],
                ),

                SizedBox(height: 10),
                SafeArea(
                  child: Container(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return WebviewScaffold(
                              url:  'https://covid19.who.int/',
//                            onWebViewCreated: (WebViewController webViewController){
//                              _controller.complete(webViewController);
//                            },
                            );
                          },
                        ));
                      },
                      child:
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Counter(
                              color: kInfectedColor,
                              number: covid[0][1],
                              title: "Total",
                            ),
                            Counter(
                              color: kDeathColor,
                              number: covid[0][2],
                              title: "Deaths",
                            ),
                            Counter(
                              color: kRecovercolor,
                              number: covid[0][3],
                              title: "Recovered",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Latest News",
                      style: kTitleTextstyle,
                    ),
                    Spacer(),
                    Hyperlink('https://newsapi.org/','source'),
                  ],
                ),
                SafeArea(
                  child: _loading
                      ? Center(
                    child: CircularProgressIndicator(),
                  )
                      : SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: <Widget>[

                          /// News Article
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            child: ListView.builder(
                                itemCount: newslist.length,
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return NewsTile(
                                    imgUrl: newslist[index].urlToImage ?? "",
                                    title: newslist[index].title ?? "",
                                    desc: newslist[index].description ?? "",
                                    content: newslist[index].content ?? "",
                                    posturl: newslist[index].articleUrl ?? "",
                                  );
                                }),
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            )
        ),
    );
  }
}

