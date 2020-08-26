import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:navigation/red.dart';

class MyBlue extends StatelessWidget {
  const MyBlue({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue.shade700);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),),
        backgroundColor: Colors.blue.shade700,
        title: Text("Blue"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Red"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyApp(),
            ),
          ),
        ),
      ),
    );
  }
}
