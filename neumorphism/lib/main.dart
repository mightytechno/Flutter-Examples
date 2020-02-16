import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
        body: Center(
          child: Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 238, 238, 238),
              boxShadow: [
                BoxShadow(offset: Offset(10, 10),color: Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
                BoxShadow(offset: Offset(-10, -10),color: Color.fromARGB(150, 255, 255, 255),blurRadius: 10)
              ]
            ),
          ),
        ),
      ),
    );
  }
}