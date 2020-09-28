import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.elasticOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 15 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.2);
            print("clicked ..");
          },
          child: Container(
            width: 200 * animation.value + 50,
            height: 200 * animation.value + 50,
            color: Color.fromRGBO(255, 25, 100, 10),
            child: Center(
              child: Text(
                'Hi',
                style: TextStyle(
                  fontSize: 24.0 * animation.value + 8.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
