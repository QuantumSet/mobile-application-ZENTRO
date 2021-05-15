import 'package:chat_sample/views/HubJoiningSecurity.dart';
import 'package:chat_sample/views/home.dart';
import 'package:flutter/material.dart';

class HubJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Hub Join"),
      content: SingleChildScrollView(
        child: Text("Do you want to join this hub?"),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HubJoinSecurity();
                }
            ));
          },
          child: Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HubsCenter();
                }
            ));
          },
          child: Text("No"),
        ),
      ],
    );
  }
}