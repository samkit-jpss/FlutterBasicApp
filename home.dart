import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp() {
  var con = Container(
    width: 300,
    height: 300,
    alignment: Alignment.bottomCenter,
    child: Text(
      "Welcome To Your Profile",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://github.com/samkit-jpss/FlutterBasicApp/blob/master/myimage.jpeg?raw=true'),
      ),
      borderRadius: BorderRadius.circular(200),
      border: Border.all(width: 6, color: Colors.black),
    ),
  );
  var myicon = Icon(
    Icons.home,
    size: 30,
  );

  return MaterialApp(
    home: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Samkit Shah"),
              accountEmail: Text('shahsamkit35@gmail.com'),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  print("");
                  Fluttertoast.showToast(
                      msg: "This is your Account",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://github.com/samkit-jpss/FlutterBasicApp/blob/master/myimage2.jpeg?raw=true'),
                ),
              ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                    onTap: () {
                      print("");
                      Fluttertoast.showToast(
                          msg: "This is Other User",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.pngio.com/microsoft-learning-personal-photo-png-200_200.png'),
                    )),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://scx2.b-cdn.net/gfx/news/2018/studyofdista.jpg'),
                ),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.account_balance),
              title: Text("My account"),
            ),
            ListTile(
              trailing: Icon(Icons.payment),
              title: Text("Payments"),
            ),
            ListTile(
              title: Text("Check balance"),
              trailing: Icon(Icons.account_balance_wallet),
            ),
            Divider(),
            ListTile(
              title: Text("Report"),
              trailing: Icon(Icons.report_problem),
            ),
            ListTile(
              title: Text("Feedback or Contact us"),
              trailing: Icon(Icons.feedback),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber,
      body: Center(child: con),
      appBar: AppBar(
        actions: <Widget>[myicon],
        title: Text('My Data'),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.amber,
        buttonBackgroundColor: Colors.amber,
        height: 50,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.black),
          Icon(Icons.add, size: 20, color: Colors.black),
          Icon(Icons.person, size: 20, color: Colors.black),
          Icon(Icons.verified_user, size: 20, color: Colors.black),
          Icon(Icons.list, size: 20, color: Colors.black),
        ],
        animationDuration: Duration(milliseconds:250),
       index: 2,
       animationCurve: Curves.fastOutSlowIn,
        onTap: (index) {
          debugPrint('Currnt screes is at index $index');
        },
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
