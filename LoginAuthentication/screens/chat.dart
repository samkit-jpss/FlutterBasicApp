import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


class MyChat extends StatefulWidget {
  MyChat({Key key}) : super(key: key);

  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
 

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Chats"),
      ),
    );
  }
}
