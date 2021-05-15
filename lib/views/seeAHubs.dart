import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chat_sample/views/Hub%20Join%20Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:chat_sample/views/seeAHubs.dart';

class seeAllHubs extends StatefulWidget {
  @override
  _seeAllHubsState createState() => _seeAllHubsState();
}

class _seeAllHubsState extends State<seeAllHubs> {

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("All Hubs"),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("hubs")
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
                            MaterialPageRoute(builder: (context) => HubJoin()),
                          );
                        },
                          child: UIFPlate(MediaQuery.of(context).size.width, snapshot.data.docs[index].data()['hub_name'].toString(),20, 3, 1, 15)
                      ),
                    ],
                  );
                });
          }
      ),
    );
  }
}