import 'dart:ui';

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
        body: 
        Stack(
          fit: StackFit.expand,
          children: [
            FlutterLogo(),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                    child: Text('Hi Frost'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
