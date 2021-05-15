import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'virtual_work_room.dart';

class HubsDetailPage extends StatefulWidget {
  @override
  _HubsDetailPageState createState() => _HubsDetailPageState();
}

class _HubsDetailPageState extends State<HubsDetailPage> {
  @override
  Widget build(BuildContext context) {

    Widget image_slider_carousel = Container(
      height: MediaQuery.of(context).size.height -100,
      child: Carousel(
        images: [
          AssetImage('assets/Slide1.PNG'),
          AssetImage('assets/Slide2.PNG'),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("✧✧ Hub ✧✧"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return VirtualWorkRoom();
                    }
                ));
              },
              child: Icon(
                Icons.book_online,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 8,),
          image_slider_carousel,
        ],
      )
    );
  }
}