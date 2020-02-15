import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Wrap'),
        ),
        body: Container(
          height: 100,
          child: Row(
            children: <Widget>[
              Flexible(
                child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit. Vestibulum posuere molestie consequat. Fusce ac eleifend sapien. Nam metus tellus, gravida ut elit eget, volutpat tempor urna.',
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          // child: Column(
          //   children: <Widget>[

          //   ],
          // ),
        ),
      ),
    );
  }
}