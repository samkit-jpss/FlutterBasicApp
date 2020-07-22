import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myapp() {
  var text = Center(child :Text(
    "WelcomeToMyApp",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  ));
  press1() {
    print("User Tapped on the Home Button!!");
  }
  var url =
      'https://github.com/samkit-jpss/FlutterBasicApp/blob/master/myimage.jpg?raw=true';
  var myimage = Image.network(
    url,
  );
  var myicon = Icon(
    Icons.home,
    size: 35.0,
  );
  var myiconbutton = IconButton(
    icon: myicon,
    onPressed: press1,
    color: Colors.white,
  );
  var myappbar = AppBar(
    title: text,
    backgroundColor: Colors.brown.shade700,
    actions: <Widget>[myiconbutton],
    leading: Icon(Icons.menu,size: 35,),
  );
  var myhome = Scaffold(
    appBar: myappbar,
    backgroundColor: Colors.brown,
    body: myimage,
  
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
