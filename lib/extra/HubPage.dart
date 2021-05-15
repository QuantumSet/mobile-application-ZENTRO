import 'TOS.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';

class HubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
              children: [
                UIBackButton(context),
                UIFPlate(320, "About Us", 18, 1, 3, 15),
                SizedBox(height: 20,),
                UIFPlate(300, "Hubs Page goes here", 13, 1, 1, 5),
                SizedBox(height: 350,),
                Center(
                  child: Row(
                    children: [
                      SizedBox(width: 80,),
                      UIFButton(130, "Terms of Service", 15, TermsOS(), context),
                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}
