import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard APP"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
        width: 350,
        height: 200,
        margin: EdgeInsets.all(45),
        decoration: BoxDecoration(
            color: Colors.blue.shade300,
            border: Border.all(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Rupak",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red)),
            Text("Flutter Dev",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_pin),
                Text(": @rupaktangudu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.code),
                Text(": @RUPAK7406",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

              ],
            )
          ],
        ));
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(75.0)),
          border: Border.all(color: Colors.black, width: 2.0),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover)),
    );
  }
}
