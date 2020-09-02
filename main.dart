import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("FireBase App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: (){
                  FirebaseFirestore.instance.collection("students").add({
                    'name': 'jack',
                    'mobile': 8114467618,
                    'class': 12,

                  });
                },
                child: Text("SEND DATA"),
              ),
              RaisedButton(
                onPressed: () async{
                  var n = await FirebaseFirestore.instance.collection("students").get();
                  for (var i in n.docs){
                    print(i.data());
                  }
                },
                child: Text("SHOW DATA"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
