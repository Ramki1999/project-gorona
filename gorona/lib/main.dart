import 'package:flutter/material.dart';
import 'package:gorona/IntroScreens/HomeScreen.dart';
import 'package:gorona/IntroScreens/LoginPage.dart';
//import 'package:gorona/IntroScreens/HomeScreen.dart';
import 'package:gorona/IntroScreens/SplashScreen.dart';
import 'package:gorona/DrawerScreens/Emergency/call_service.dart';
import 'package:gorona/TabScreens/Educate/Edu_options.dart';
import 'package:gorona/TabScreens/Educate/Educate.dart';

/// Using the BlOC Pattern to represent widgets as stream of events - Used for weather updates in HomeScreen
/// MyApp - Main widget that starts the splashScreen
void main() {
  setupLocator();
  runApp(MyApp());
}

/// Opens Splash screen and moves to HomeScreen after animation is completed
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomeScreen()
      },
    );
  }
}
