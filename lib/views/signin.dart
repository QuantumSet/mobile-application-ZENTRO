import 'package:chat_sample/extra/AboutPage.dart';
import 'package:chat_sample/views/home.dart';
import 'package:flutter/material.dart';
import 'package:chat_sample/services/auth.dart';
import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/services.dart' show rootBundle;

class EnterPage extends StatefulWidget {
  @override
  _EnterPageState createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {

  void _showDialog() async {
    String tsCode = await rootBundle.loadString('assets/TOS.txt');
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            title: Center(child: Text("Terms of Service")),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        tsCode
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: RaisedButton(
                      child: new Text(
                        'I agree',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xFF121A21),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        //saveIssue();
                        AuthMethods().signInWithGoogle(context);
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
              children: [
                SizedBox(height: 150,),
                Image(image: AssetImage('assets/Logo.PNG')),
                SizedBox(height: 100,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      _showDialog();
                      //AuthMethods().signInWithGoogle(context);
                    },
                    minWidth: 150,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
                    ),
                    child: Text("Sign In With Google", style: TextStyle(color: Colors.white, fontSize: 18)),
                    splashColor: Colors.deepPurpleAccent,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 150),
                UIFButton(350, "About", 18, AboutPage(), context),
              ]
          ),
        )
    );
  }
}