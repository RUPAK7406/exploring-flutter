import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {

  _tappedButton () {
    debugPrint("Tapped Alaram Button");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("My Scaffold AppBar",
                style: TextStyle(color: Colors.black))),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed:()=> debugPrint("Email Pressed") ),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tappedButton())   ],
      ),
      backgroundColor: Colors.cyan.shade200,
      body: Center(
        child: Text("My Scaffold Body here",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
