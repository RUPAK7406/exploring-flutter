import 'package:flutter/material.dart';

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  int _index = 0;
  List quotes = [
    "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.",
    "Be yourself; everyone else is already taken.",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    "So many books, so little time.",
    "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.",
    "A room without books is like a body without a soul.",
    "You've gotta dance like there's nobody watching,Love like you'll never be hurt, Sing like there's nobody listening,And live like it's heaven on earth.",
    "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
    "You only live once, but if you do it right, once is enough.",
    "In three words I can sum up everything I've learned about life: it goes on"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    borderRadius: BorderRadius.circular(15),
                     border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ),
          Divider(thickness: 1.0),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.green.shade700,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  "Inspire Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
          ),
          Spacer( )
          ],
      )),
    );
  }

  void _showQuote() {
    //Increment the Index by one each time.
    setState(() {
      _index += 1;
    });
  }
}
