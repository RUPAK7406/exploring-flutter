import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Center(
            child: Text("Hello Flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25.5,
                    fontStyle: FontStyle.italic)
                    )
                  )
                 );
  }
}
