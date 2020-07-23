import 'package:flutter/material.dart';

myapp() {
  var con = Container(
    width: 300,
    height: 300,
    alignment: Alignment.bottomCenter,
      child: Text(
        "Mr.Samkit Shah",
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
      ),
    
    decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage('https://github.com/samkit-jpss/FlutterBasicApp/blob/master/myimage.jpeg?raw=true'),),
     borderRadius: BorderRadius.circular(200),
     border: Border.all(width:6 , color: Colors.brown.shade800,)
     
     ) ,);
var myicon = Icon(Icons.home,size: 30,);
var mylicon = Icon(Icons.menu , size: 30);
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown.shade100,
  
      body: Center(child: con),
      appBar: AppBar(
        leading: mylicon,
        actions: <Widget>[myicon],
        title: Text('My Data'),
        backgroundColor: Colors.brown.shade900,
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
