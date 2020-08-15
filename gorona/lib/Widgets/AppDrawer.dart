import 'package:flutter/material.dart';
import 'package:gorona/DrawerScreens/Feedback.dart';
import 'package:gorona/DrawerScreens/Account.dart';
import 'package:gorona/DrawerScreens/Emergency/Contacts.dart';
import 'package:gorona/DrawerScreens/Emergency/VHealth.dart';
import 'package:gorona/DrawerScreens/Emergency/SecureMe.dart';
import 'package:gorona/DrawerScreens/Doctor/Doctor.dart';
import 'package:gorona/DrawerScreens/Info.dart';
import 'package:gorona/DrawerScreens/Settings.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("A.P.J Abdul Kalam"),
            accountEmail: new Text("9840802020"),
            currentAccountPicture: new CircleAvatar(
              radius: 45,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("asset/user.png"),
              ),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              'Emergency',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {},
          ),

          ///To Store Emergency contacts of Local Rescue officers and first responders
          new ListTile(
              leading: Icon(
                Icons.contacts,
                color: Colors.black,
              ),
              title: Text('Helpline'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Helplines()));
              }),

          ///Chat Interface to interact with the Rescue officers and local umbrella users during emergency situation.
          ///Can Implement offline chat option using the network established by PROJECT OWL.
          new ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text('Doctor'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Doctor()));
              }),

          ///Find Evacuation Tips and Safe zones near your place used in emergency situation
          new ListTile(
              leading: Icon(
                Icons.wifi_tethering,
                color: Colors.black,
              ),
              title: Text('Secure 360'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Secure360()));
              }),
        
          new ListTile(
              leading: Icon(
                Icons.local_hospital,
                color: Colors.black,
              ),
              title: Text('COVID Health Checkup'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => VHealthCheckup()));
              }),

          Divider(),

          ///Edit your account details, NOTE: Umbrella recognizes its user by phone number and their location coordinates
          new ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text('Account'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => UserDetails()));
              }),

          ///Guidelines to be followed during disaster times - Crowd sourced from trusted CDC data
          new ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: Text('Info'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => InfoScreen()));
              }),

          ///Settings to change the temperature unit and location options
          new ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsScreen()));
              }),
          Divider(),

          ///Feedback  to improve umbrella
          ///Google Form link : "https://docs.google.com/forms/d/e/1FAIpQLSdQ5haiEiduIy3_g_uc9jLkNYrkuQGH6I1YWM3ysQDJQvnPZA/viewform?usp=sf_link"
          new ListTile(
              leading: Icon(
                Icons.bug_report,
                color: Colors.black,
              ),
              title: Text('Feedback'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => UFeedback()));
              }),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
