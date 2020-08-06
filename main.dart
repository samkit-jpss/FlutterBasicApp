import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

String x;
myweb(x) async{
  var url = "http://192.168.29.26/cgi-bin/${x}.py";
  var response = await http.get(url);
  var body = response.body;
  print(body);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Filed'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Enter command below :"),
              Card(
                margin: EdgeInsets.all(30),
                color: Colors.blue.shade50,
                elevation: 10,
                child: TextField(
                  onChanged: (val) {
                    x = val;
                  },
                ),
              ),
              FlatButton(
                onPressed: () {
                  print(myweb(x));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.play_arrow), Text("Run")]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
