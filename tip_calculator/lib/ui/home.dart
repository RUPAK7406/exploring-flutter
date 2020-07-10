
import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/hexColor.dart';

class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;
  Color _purple = HexColor("#6908D6");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      alignment: Alignment.center,
      color: Colors.white,
      child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: _purple.withOpacity(0.1),//Colors.purpleAccent.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Total Per Person", style: TextStyle(),),
                      Text("\$230"),
                    ]
                    ),
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top : 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color : Colors.transparent,
                border : Border.all(
                  color: Colors.blueGrey.shade100,
                  style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child : Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color : _purple),
                    decoration: InputDecoration(
                      prefixText: "Bill Amount : ",
                      prefixIcon: Icon(Icons.assignment)
                     ),
                     onChanged: (String value){
                       try{
                         _billAmount = double.parse(value);

                       } catch(exception){
                         _billAmount = 0.0;
                       }
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Split",
                      style : TextStyle(
                        color: Colors.grey.shade700),),
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(_personCounter > 1){
                                    _personCounter--;
                                  } else {
                                    //Do Something
                                  }
                                });
                              },child: Container(
                                width : 40, 
                                height : 40,
                                margin : EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: _purple.withOpacity(0.1)
                                ),
                                child:
                                 Center(
                                   child: Text(
                                    "-",style: TextStyle(
                                      color : _purple, 
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                ),
                                 ),
                              ),
                            ),
                            Text("$_personCounter",
                            style: TextStyle(
                              color : _purple, 
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                            ),
                            ),


                          InkWell(
                              onTap: (){
                                setState(() {
                                  _personCounter++;
                                });
                              },child: Container(
                                width : 40, height : 40,
                                margin : EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: _purple.withOpacity(0.1)
                                ),
                                child:
                                 Center(
                                   child: Text(
                                    "+",style: TextStyle(
                                      color : _purple, 
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                ),
                                 ),
                              ),
                            ),


                        ],
                        )
                    ],
                  ),

                ]
              ),
            ),
          ]
          ),
    )
    );
  }
}