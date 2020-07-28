import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
myapp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.blue.shade900);
  myprint(){
    Fluttertoast.showToast(
        msg: "Verified Profile",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        
        fontSize: 16.0
    );
  }
  var myhome = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    margin: EdgeInsets.all(20),
    color: Colors.blue.shade50,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue.shade900, width: 5),
          ),
          margin: EdgeInsets.all(50),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  

                  Text(
                "Samkit Shah ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 25,
                height:25,
                decoration: BoxDecoration(
                  image:DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI0wgO6NJWRo-PzY69Qfqb6FVF6JdVRNhblg&usqp=CAU'),
              fit: BoxFit.cover,
              
              ), 
                )
              )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email,color: Colors.blue,size:15),
                  Text("  shahsamkit35@gmail.com",style: TextStyle(color:Colors.black,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.work,color: Colors.blue,size: 15,),
                  Text("  Software Engineer",style: TextStyle(color:Colors.black),),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://github.com/samkit-jpss/FlutterBasicApp/raw/master/myimage.jpeg'),
              fit: BoxFit.cover
              ),
             borderRadius: BorderRadius.circular(50),  
             border: Border.all(
               color:Colors.blue.shade900,
               
             )
            ),
            width: 100,
            height: 100,
          ),
        ),
      ],
      
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue,
        color: Colors.blue.shade900,
        
    backgroundColor: Colors.white,
    items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.white),
          Icon(Icons.add, size: 20, color: Colors.white),
          Icon(Icons.person, size: 20, color: Colors.white),
          Icon(Icons.exit_to_app, size: 20, color: Colors.white),
          Icon(Icons.list, size: 20, color: Colors.white),
        
    ],
            animationDuration: Duration(milliseconds:250),
       index: 2,
       animationCurve: Curves.fastOutSlowIn,
       height: 50,
   
    ),
        body: myhome,
        appBar: AppBar(
          leading: Icon(Icons.menu,size:25),
          actions: <Widget>[
            Icon(Icons.home,size:25),
            Text("   "),
            Icon(Icons.open_in_new,size:25),
            Text(" "),
          ],
          backgroundColor: Colors.blue.shade900,
          title: Text("Business Profiles"),
        )),
  
  );
  
}
