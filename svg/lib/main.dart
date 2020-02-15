import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: 
      Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
              Container(
                width: 100,
                child: SvgPicture.asset("images/doughnut.svg"),
              ),
            ],
            ),
          ),
        ),
    );
  }
}