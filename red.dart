import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:navigation/green.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent.shade400);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),),

        backgroundColor: Colors.redAccent.shade400,
        title: Text("Red"),
      ),
      body: Center(
        
        child: RaisedButton(
          child: Text("Green"),
          onPressed: () => 
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyGreen(),
          ),
          
          )
        ),
      ),
    );
  }
}
