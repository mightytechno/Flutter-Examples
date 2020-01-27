import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  var textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent)
                ),
                child: Text('Simple Border',style: textStyle),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 10)
                ),
                child: Text('Border width Border',style: textStyle),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 10,
                      color: Colors.amber
                    ),
                    bottom: BorderSide(
                      color: Colors.blue
                    )
                  )
                ),
                child: Text('Different Border',style: textStyle,),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent,width: 2)
                ),
                child: Text('Round corner Border',style: textStyle),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  border: Border.all(color: Colors.blueAccent,width: 2)
                ),
                child: Text('Different round corners Border',style: textStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}