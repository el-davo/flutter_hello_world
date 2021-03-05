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
                  "Hello Flutter 12345",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )));
  }
}
