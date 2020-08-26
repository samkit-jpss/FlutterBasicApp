import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:navigation/blue.dart';

class MyGreen extends StatelessWidget {
  const MyGreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.greenAccent.shade700);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),),
        backgroundColor: Colors.greenAccent.shade700,
        title: Text("Green"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Blue"),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBlue(),
                  ),
                )),
      ),
    );
  }
}
