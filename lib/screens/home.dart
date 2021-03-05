import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello Flutter App',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Title in App Bar"),
            ),
            body: Material(
              color: Colors.deepPurple,
              child: Center(
                child: Text(
                  sayHello(),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )));
  }

  String sayHello() {
    String hello;
    DateTime now = DateTime.now();
    int hour = now.hour;
    int minute = now.minute;

    if (hour < 12) {
      hello = "Good Morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }

    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now" + hour.toString() + ":" + minutes + "\n" + hello;
  }
}
