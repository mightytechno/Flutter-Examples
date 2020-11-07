import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child:
RichText(
  text: TextSpan(
    children: [
      TextSpan(text: "You can ",style: TextStyle(color: Colors.black)),
      TextSpan(text: "bold ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      TextSpan(text: "colour ",style: TextStyle(color: Colors.red)),
      TextSpan(text: "the text ",style: TextStyle(color: Colors.black)),
    ]
  )
),
          ),
        ),
      ),
    );
  }
}
