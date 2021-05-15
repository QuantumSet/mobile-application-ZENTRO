import 'package:chat_sample/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateHub extends StatefulWidget {

  @override
  _CreateHubState createState() => _CreateHubState();
}

class _CreateHubState extends State<CreateHub> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final _hubnamecontroller = TextEditingController();

  final _focusareacontroller = TextEditingController();

  String hubname = "";

  String focusarea = "";

  void addHub() async {
    FirebaseFirestore.instance.collection("hubs").doc(hubname)
        .set({
      "hub_name": hubname,
      "focus_area" : focusarea,
      "creator" : auth.currentUser.email,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Create Hubs Page"),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) =>
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16,),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _hubnamecontroller,
                  decoration: InputDecoration(
                    hintText: "Type hub name here",
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
                SizedBox(height: 16,),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _focusareacontroller,
                  decoration: InputDecoration(
                    hintText: "Type focus area here",
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
                SizedBox(height: 26,),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      hubname = _hubnamecontroller.text;
                      focusarea = _focusareacontroller.text;
                    });
                    addHub();
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Hub Created'),
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
                  color: Colors.deepPurple,
                  textColor: Colors.black,
                  child: Text("Create Hub!"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
