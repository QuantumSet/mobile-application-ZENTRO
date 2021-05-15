import 'package:chat_sample/helper/helperwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;

class TermsOS extends StatefulWidget {
  @override
  _TermsOSState createState() => _TermsOSState();
}

class _TermsOSState extends State<TermsOS> {

  //String tsCode = rootBundle.loadString('assets/TOS.txt') as String;

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                UIBackButton(context),
              ],
            ),
            UIFPlate(300, "Terms of Service",20, 1, 3, 15),
            Divider(
                thickness: 1,
                color: Colors.deepPurpleAccent
            ),
            _showtsCode(),
          ],
        )
    );
  }
  _showtsCode() async{
    String tsCode = await rootBundle.loadString('assets/TOS.txt');
    Text(tsCode);
  }
}

/*
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/message (1).txt');
}
 */

/*
import 'package:designs/HubsCenter.dart';
import 'package:designs/helper/helperwidgets.dart';
import 'package:flutter/material.dart';
import 'Information/AboutPage.dart';
import 'package:flutter/services.dart' show rootBundle;

class EnterPage extends StatefulWidget {
  @override
  _EnterPageState createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Image(image: AssetImage('assets/ZENTRO.png')),
              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: //UIFButton(150, "Sign In With Google", 18, HubsCenter(), context),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      _showDialog();
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
                ),
              SizedBox(height: 180),
              UIFButton(350, "About", 18, AboutPage(), context),
            ]
          ),
        )
    );
  }

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HubsCenter()),
                        );
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
}
 */