import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar"),
        ),
        body: Layer(),
      ),
    );
  }
}

class Layer extends StatefulWidget {
  Layer({Key key}) : super(key: key);

  @override
  _LayerState createState() => _LayerState();
}

class _LayerState extends State<Layer> {
  var p;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                onPressed: () {
                  p = Scaffold.of(context).hasAppBar;
                
                  print(p);
                },
                child: Center(
                  child: Text("Button for Scaffold.of()"),
                ),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You pressed snackbar!"),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: Text("Snackbar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
