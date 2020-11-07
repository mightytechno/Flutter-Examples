import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
void _select(value){
  switch(value){
    case 'Home':
      break;
    case 'Order':
      break;
  }
  print(value);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar (
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return {'Home','Order'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),],
          title: Text(''),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}