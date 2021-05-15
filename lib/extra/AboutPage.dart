import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
              children: [
                UIBackButton(context),
                UIFPlate(320, "About Us", 18, 1, 3, 15),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      FlatButton(
                          minWidth: 200,
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                          ),
                          child: RichText(
                            overflow: TextOverflow.fade,
                            text: TextSpan(
                              text: "Zentro is a communication app that looks to educate while connecting people. In a virtually-dominant world, education is an element of life that has been hard to obtain, especially at high quality standards.",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(height: 20),
                      Image(image: AssetImage('assets/Logo.PNG'), width: 150, height: 150,),
                      Divider(
                          height: 50,
                          thickness: 3,
                          color: Colors.deepPurpleAccent
                      ),
                      FlatButton(
                          minWidth: 200,
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                          ),
                          child: RichText(
                            overflow: TextOverflow.fade,
                            text: TextSpan(
                              text: "With the Zentro app, people can create an account using their Google account and begin learning and connecting with professionals in that field within minutes. Our app has been developed so that it is compatible with any Android device and accessible from anywhere. Zentro’s special features include hubs and video chatting that enable for learning and collaborating with others, regardless of skill level or depth of knowledge. Each and every hub includes a chatting feature that allows for interactions with large groups, in addition to a video chatting feature.",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.android_rounded, color: Colors.white, size: 100,),
                          SizedBox(width: 100),
                          Icon(Icons.group, color: Colors.white, size: 100,),
                        ],
                      ),
                      Divider(
                          height: 40,
                          thickness: 3,
                          color: Colors.deepPurpleAccent
                      ),
                      FlatButton(
                          minWidth: 200,
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                          ),
                          child: RichText(
                            overflow: TextOverflow.fade,
                            text: TextSpan(
                              text: "We strive every day to ensure that Zentro meets these qualifications and makes education fun, intriguing and easy to access for everyone.",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.connect_without_contact, color: Colors.white, size: 100,),
                          SizedBox(width: 100),
                          Icon(Icons.school, color: Colors.white, size: 100,),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Version 1.1.0", style: TextStyle(
                          color: Colors.white54,
                        ),),
                      )
                    ],
                  ),
                ),
              ]
          ),
        )
    );
  }
}