import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(""),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                
                
                color: Colors.blue,
                elevation: 10,
                child: MaterialButton(
                  splashColor: Colors.amber,
                  onPressed: () {
                    Navigator.pushNamed(context, "reg");
                  },
                  child: Text("Registration"),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              SizedBox(height: 10),
              Material(
                color: Colors.blue,
                elevation: 10,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: Text("Login"),
                  
                ),
                borderRadius: BorderRadius.circular(20)
              ),
            ],
          ),
        ));
  }
}
