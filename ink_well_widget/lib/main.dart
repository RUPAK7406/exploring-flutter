import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  _tappedButton() {
    debugPrint("Tapped Alaram Button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                "My Inkwell Widget",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () => debugPrint("Email Pressed")),
              IconButton(
                  icon: Icon(Icons.access_alarms), onPressed: _tappedButton())
            ]),
        //backgroundColor: Colors.green,
        floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.green,
           child: Icon(Icons.add_circle),
           onPressed: ()=> debugPrint("Tapped FAB"),),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("First")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), title: Text("Second")),
              BottomNavigationBarItem(
              icon: Icon(Icons.add_comment), title: Text("Third"))
        ], onTap: (int index) => debugPrint('Tapped item: $index')),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // InkWell(
              //   child: Text("Tap Me..", style: TextStyle(fontSize : 23.4),),
              //   onTap: ()=> debugPrint('Tapped..'),
              // ),
              CustomButton()
            ],
          ),
        )));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final mysnackbar = SnackBar(
          content: Text("Hello Again"),
          backgroundColor: Colors.blueAccent,
        );
        Scaffold.of(context).showSnackBar(mysnackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Text("Button"),
      ),
    );
  }
}
