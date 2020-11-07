import 'dart:math';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FancyList(),
    );
  }
}

class FancyList extends StatefulWidget {
  const FancyList({
    Key key,
  }) : super(key: key);

  @override
  _FancyListState createState() => _FancyListState();
}

class _FancyListState extends State<FancyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child:SizedBox(
            child: ListWheelScrollView(
              diameterRatio: 1.5,
              perspective: 0.005,
              itemExtent: 100,
              offAxisFraction: -2,
              magnification: 10,

              physics: ClampingScrollPhysics(),
            children: getWidget(),),
          ),
        ),
      ),
    );
  }

  List<Widget> getWidget(){
    List<Widget> con = new List();
     for(int x = 0 ; x < 30 ; x++) {
      con.add(
        Container(
            height: 100,
            width: double.infinity,
            color: Colors.redAccent,
          ));
     }
    return con;
  }
}