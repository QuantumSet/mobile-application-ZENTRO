import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chat_sample/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HubJoinSecurity extends StatefulWidget {

  @override
  _HubJoinSecurityState createState() => _HubJoinSecurityState();
}

class _HubJoinSecurityState extends State<HubJoinSecurity> {

  void addMember() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore.instance.collection("user hubs").doc(hubjoinsecurity)
        .set({
      "member": auth.currentUser.displayName,
      "hub name" : _hubjoinsecuritycontroller,
    });
  }

  final _hubjoinsecuritycontroller = TextEditingController();

  String hubjoinsecurity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Joining Hub Security"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16,),
              TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _hubjoinsecuritycontroller,
                decoration: InputDecoration(
                  hintText: "Type hub name you are joining here",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                ),
              ),
              SizedBox(height: 8,),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    hubjoinsecurity = _hubjoinsecuritycontroller.text;
                  });
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HubsCenter();
                      }
                  ));
                  addMember();
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Hub Joined'),
                    duration: Duration(seconds: 7),
                    action: SnackBarAction(
                      label: 'Go to Home Page',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HubsCenter()),
                        );
                      },
                    ),
                  ));
                },
                color: Colors.deepPurpleAccent,
                textColor: Colors.white54,
                child: Text("Done"),
              ),
              SizedBox(height: 16,),
              Text("The Zentro developer team has decided to make users (like you) type out the hub they are joining", style: TextStyle(
                fontSize: 21,
                color: Colors.white54,
              ),),
              SizedBox(height: 16,),
              Row(
                children: <Widget>[
                  Text("Click", style: TextStyle(
                    fontSize: 21,
                    color: Colors.white54,
                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Scaffold(
                              backgroundColor: Colors.black,
                              appBar: AppBar(
                                title: Text("Zentro's Security Policies"),
                                centerTitle: true,
                                backgroundColor: Colors.deepPurpleAccent,
                              ),
                              body: Center(
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 16,),
                                    Text("From the Zentro team: The reason why we insist users to type out the hub they are joining before they join is so that bots cannot spam join hubs and crash our servers. Thank you for abiding by our rules!", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0
                                    ),)
                                  ],
                                ),
                              ),
                            );
                          }
                      ));
                    },
                    child: Container(
                      child: Text(" here ", style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue,
                      ),),
                    ),
                  ),
                  Text("to see why", style: TextStyle(
                    fontSize: 21,
                    color: Colors.white54,
                  ),)
                ],
              )
            ],
          ),
        )
    );
  }
}