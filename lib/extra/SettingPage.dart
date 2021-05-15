import 'package:chat_sample/Social%20Media/SocialMediaScreen.dart';
import 'package:chat_sample/extra/AboutPage.dart';
import 'package:chat_sample/extra/BugReportScreen.dart';
import 'package:chat_sample/views/signin.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  void _showDialog() async {
    String tsCode = await rootBundle.loadString('assets/TOS.txt');
    showDialog(
      context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            title: Center(child: Text("Terms of Service")),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        tsCode
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: RaisedButton(
                      child: new Text(
                        'Exit',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xFF121A21),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Row(
              children: <Widget>[
                UIBackButton(context),
              ],
            ),
            UIFPlate(300, "Settings",20, 3, 1, 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocialMediaScreen()),
                );
              },
              child: ListPlate(65, 300, "Social Media", Icons.send_outlined, 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BugReportScreen()),
                );
              },
              child: ListPlate(65, 300, "Bug Report", Icons.bug_report, 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: ListPlate(65, 300, "About Us", Icons.info, 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            GestureDetector(
              onTap: () {
                _showDialog();
              },
              child: ListPlate(65, 300, "Terms of Service", Icons.adb, 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnterPage()),
                );
              },
              child: Card(
                color: Colors.black,
                child: Container(
                  height: 65,
                  width: 300,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.logout, size: 30,
                        color: Colors.white,
                        ),
                      SizedBox(width: 20,),
                      Text(
                        "Log Out", style: TextStyle(color: Colors.white, fontSize: 18,),),
                    ],
                  ),
                ),
              )
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
          ],
        )
    );
  }
}