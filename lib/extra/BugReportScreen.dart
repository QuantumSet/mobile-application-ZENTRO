import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BugReportScreen extends StatefulWidget {
  @override
  _BugReportScreenState createState() => _BugReportScreenState();
}

class _BugReportScreenState extends State<BugReportScreen> {

  final FirebaseAuth auth = FirebaseAuth.instance;

  final _bug = TextEditingController();
  final _description = TextEditingController();
  String bug = "";
  String description = "";

  void addHub() async {
    FirebaseFirestore.instance.collection("bug report").doc()
        .set({
      "bug": bug,
      "description" : description,
      "user reporting" : auth.currentUser.email,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Bug Report Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 16,),
              TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _bug,
                decoration: InputDecoration(
                  hintText: "Type bug here",
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
                controller: _description,
                decoration: InputDecoration(
                  hintText: "Type bug description here",
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
                  Navigator.pop(context);
                  setState(() {
                    bug = _bug.text;
                    description = _description.text;
                  });
                  addHub();
                },
                color: Colors.deepPurple,
                textColor: Colors.black,
                child: Text("Report Bug"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
