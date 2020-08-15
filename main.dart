import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

weather()async{

  var url = "http://api.openweathermap.org/data/2.5/forecast?q=jaipur&appid=9a1f86b63c52c9957c79690387438790";
  var respo = await http.get(url);
  var out = jsonDecode(respo.body);
  print(out['list'][0]["weather"][0]["description"]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("WeatherAPI"),
        ),
        body: Center(
          child: FlatButton(
            onPressed: (){
              weather();
            },
            child: Text("Click for Weather Report"),color: Colors.blue.shade200,
          ),
        ),
      ),
    );
  }
}
