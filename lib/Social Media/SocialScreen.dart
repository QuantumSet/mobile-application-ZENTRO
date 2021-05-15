import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TwitterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.twitter.com/explore",
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Twitter"),
      ),
    );
  }
}

class RedditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.reddit.com",
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Reddit"),
      ),
    );
  }
}

class FacebookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.facebook.com",
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Facebook"),
      ),
    );
  }
}

class InstagramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.instagram.com",
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Instagram"),
      ),
    );
  }
}
