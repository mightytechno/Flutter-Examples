import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            backgroundColor: Colors.greenAccent ,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Background'),
            ),
            body: Container()));
  }
}

// SingleChildScrollView(

//                         scrollDirection: Axis.vertical,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             TextField(
//                                 decoration: InputDecoration(
//                   fillColor: Colors.white, filled: true)),
//                             TextField(
//                                 decoration: InputDecoration(
//                   fillColor: Colors.white, filled: true)),
//                             TextField(
//                                 decoration: InputDecoration(
//                   fillColor: Colors.white, filled: true)),
//                             TextField(
//                                 decoration: InputDecoration(
//                   fillColor: Colors.white, filled: true)),
//                             TextField(
//                                 decoration: InputDecoration(
//                   fillColor: Colors.white, filled: true)),
//                           ],
//                         ),
//                       )
