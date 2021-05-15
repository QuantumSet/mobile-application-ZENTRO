import 'package:chat_sample/views/signin.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';
import 'HubPage.dart';

class HubsScreen extends StatelessWidget {
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
            UIFPlate(300, "All Joined Hubs",20, 1, 3, 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HubPage()),
                );
              },
              child: Container(
                height: 75,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.group_work_outlined, size:30, color: Colors.white, semanticLabel: "Hub 1",),
                    SizedBox(width: 20,),
                    Text('Hub 1', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ],
                ),
              ),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HubPage()),
                );
              },
              child: Container(
                height: 75,
                width: 300,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.group_work_outlined, size:30, color: Colors.white, semanticLabel: "Hub 2",),
                    SizedBox(width: 20,),
                    Text('Hub 2', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ],
                ),
              ),
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
              child: Container(
                height: 75,
                width: 300,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.group_work_outlined, size:30, color: Colors.white, semanticLabel: "Hub 3",),
                    SizedBox(width: 20,),
                    Text('Hub 3', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ],
                ),
              ),
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
