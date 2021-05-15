import 'dart:async';
import 'package:chat_sample/extra/AboutPage.dart';
import 'package:chat_sample/extra/SettingPage.dart';
import 'package:chat_sample/views/CreateHub.dart';
import 'package:chat_sample/views/HubsDetailPage.dart';
import 'package:chat_sample/views/message2.dart';
import 'package:chat_sample/views/seeAHubs.dart';
import 'package:chat_sample/views/seeJHubs.dart';
import 'package:flutter/material.dart';
import 'package:connectycube_sdk/connectycube_sdk.dart';
import 'package:share/share.dart';
import '../src/utils/consts.dart';
import 'package:flutter/widgets.dart';
import 'package:chat_sample/helper/helperwidgets.dart';


class MiddlePageScreen extends StatefulWidget {
  final CubeUser currentUser;

  MiddlePageScreen(this.currentUser);

  @override
  _MiddlePageScreenState createState() => _MiddlePageScreenState();
}

class _MiddlePageScreenState extends State<MiddlePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Welcome to ZENTRO!"),),
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurpleAccent,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Image(image: AssetImage('assets/Logo.PNG')),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  tileColor: Colors.deepPurpleAccent,
                  leading: Icon(Icons.message, color: Colors.white, size: 30),
                  title: Text('Direct Messages',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.deepPurpleAccent,
                  leading: Icon(
                      Icons.group_work, color: Colors.white, size: 30),
                  title: Text('Joined Hubs',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => seeJoinedHubs()),
                    );

                  },
                ),
                ListTile(
                  tileColor: Colors.deepPurpleAccent,
                  leading: Icon(
                      Icons.add_box_outlined, color: Colors.white, size: 30),
                  title: Text('Add Hub',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateHub()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.white, size: 30),
                  tileColor: Colors.deepPurpleAccent,
                  title: Text('About',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.white, size: 30),
                  tileColor: Colors.deepPurpleAccent,
                  title: Text('Share with Friends',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Share.share(
                      'Dowload Zentro! We can learn new things together! - https://play.google.com/store',
                      subject: "Share ZENTRO!",
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.white, size: 30),
                  tileColor: Colors.deepPurpleAccent,
                  title: Text('Settings',
                      style: TextStyle(fontSize: 20, color: Colors.white,)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              width: 100,
              height: 100,
              left: 20,
              top: 20,
              child: Image(image: AssetImage('assets/Logo.PNG')),
            ),
            Positioned(
              right: 10,
              top: 25,
              child: UIFButton(180, "See All Hubs", 13, seeAllHubs(), context),
            ),
            Positioned(
              width: 180,
              height: 180,
              left: 10,
              top: MediaQuery
                  .of(context)
                  .size
                  .height / 5,
              child: FractionallySizedBox(
                  heightFactor: 0.7,
                  widthFactor: 0.7,
                  child: HubPlate(200, "Programming Hub", Icon(
                      Icons.group_work_outlined, color: Colors.white,
                      size: MediaQuery
                          .of(context)
                          .size
                          .height / 20), 13, HubsDetailPage(), context)),
            ),
            Positioned(
              width: 180,
              height: 180,
              right: 10,
              top: MediaQuery
                  .of(context)
                  .size
                  .height / 5,
              child: FractionallySizedBox(
                  heightFactor: 0.7,
                  widthFactor: 0.7,
                  child: HubPlate(200, "Learning German Hub", Icon(
                      Icons.group_work_outlined, color: Colors.white,
                      size: MediaQuery
                          .of(context)
                          .size
                          .height / 20), 13, HubsDetailPage(), context)),
            ),
            Positioned(
              width: 180,
              height: 180,
              left: 10,
              top: MediaQuery
                  .of(context)
                  .size
                  .height * 9 / 20,
              child: FractionallySizedBox(
                  heightFactor: 0.7,
                  widthFactor: 0.7,
                  child: HubPlate(200, "Physics and Chemistry Hub", Icon(
                      Icons.group_work_outlined, color: Colors.white,
                      size: MediaQuery
                          .of(context)
                          .size
                          .height / 20), 11, HubsDetailPage(), context)),
            ),
            Positioned(
              width: 180,
              height: 180,
              right: 10,
              top: MediaQuery
                  .of(context)
                  .size
                  .height * 9 / 20,
              child: FractionallySizedBox(
                  heightFactor: 0.7,
                  widthFactor: 0.7,
                  child: HubPlate(200, "Electrical Engineering Hub", Icon(
                      Icons.group_work_outlined, color: Colors.white,
                      size: MediaQuery
                          .of(context)
                          .size
                          .height / 20), 11, HubsDetailPage(), context)),
            ),
            Positioned(
              bottom: 70,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  onPressed: () {
                    _openSettings(context);
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
                  ),
                  child: Text("Direct Messaging", style: TextStyle(color: Colors.white, fontSize: 17)),
                  splashColor: Colors.deepPurpleAccent,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
    );
  }

  Future<bool> _onBackPressed() {
    return Future.value(false);
  }

  _openSettings(BuildContext context) {
    Navigator.pushNamed(context, 'select_dialog',
        arguments: {USER_ARG_NAME: widget.currentUser});
  }
}
