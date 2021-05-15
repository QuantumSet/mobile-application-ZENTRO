import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chat_sample/views/HubsDetailPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_sample/helper/helperwidgets.dart';

class seeJoinedHubs extends StatefulWidget {
  @override
  _seeJoinedHubsState createState() => _seeJoinedHubsState();
}

class _seeJoinedHubsState extends State<seeJoinedHubs> {

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Joined Hubs"),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("user hubs")
           //.where("member", isEqualTo: auth.currentUser.displayName)
           .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Center(child: CircularProgressIndicator(),);
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (_, index){
                  return Column(
                    children: [
                      SizedBox(height: 8,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HubsDetailPage()),
                          );
                        },
                          child: UIFPlate(MediaQuery.of(context).size.width, snapshot.data.docs[index].data()['hub name'].toString(),20, 3, 1, 15)
                      ),
                    ],
                  );
                });
          }
      ),
    );
  }
}