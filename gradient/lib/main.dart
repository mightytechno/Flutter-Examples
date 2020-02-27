import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text("AppBar")],
              ),
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
                  gradient: LinearGradient(
                    colors: [Colors.amber, Colors.cyan],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,)
                ),
            ),
            preferredSize: Size(double.infinity, 56)
          ),
        body: Column(
          children: <Widget>[
            // Expanded(
            //   child: Container(
            //     decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //             colors: [Colors.green, Colors.red],
            //             begin: Alignment.bottomCenter,
            //             end: Alignment.topCenter)),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       gradient: RadialGradient(
            //       colors: [Colors.red, Colors.amber, Colors.blue],
            //       center: Alignment(0.1, 0.2)
            //     )),
            //   ),
            // )
            Text("HELLO",style: TextStyle(
            ),)
          ],
        ),
      ),
    );
  }
}
