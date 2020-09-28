import 'package:flutter/material.dart';
import 'package:myanimation_app/Animation.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
        ),
        body: MyA1(),
      ),
    ),
  );
}
