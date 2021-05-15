import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:share/share.dart';

class VirtualWorkRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://meet.google.com/",
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Virtual Work Room"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {
                  Share.share('Use my meeting link to join the virtual meeting I created!',
                    subject: "copy and paste meeting url here",
                  );
                },
                icon: Icon(Icons.ios_share),
                iconSize: 26.0,
                tooltip: 'share google meet link to others in the hub',
                ),
              ),
        ],
      ),
    );
  }
}
