import 'package:chat_sample/Social%20Media/SocialScreen.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
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
            UIFPlate(300, "Connect to Social Media!",20, 1, 3, 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TwitterScreen()),
                );
              },
              child: ListPlateWithImg(65, 300, "Twitter", Image(image: AssetImage('assets/twittericon.png'), width: 40, height: 40,), 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RedditScreen()),
                );
              },
              child: ListPlateWithImg(65, 300, "Reddit", Image(image: AssetImage('assets/reddit.png'), width: 40, height: 40,), 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FacebookScreen()),
                );
              },
              child: ListPlateWithImg(65, 300, "Facebook", Image(image: AssetImage('assets/facebook.png'), width: 40, height: 40,), 30, 18),
            ),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstagramScreen()),
                );
              },
              child: ListPlateWithImg(65, 300, "Instagram", Image(image: AssetImage('assets/instagram.png'), width: 40, height: 40,), 30, 18),
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
