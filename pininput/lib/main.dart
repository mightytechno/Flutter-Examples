import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: PinCodeTextField(
            autofocus: true,
            controller: _textEditingController,
            maxLength: 5,
            highlight: false,
            hasUnderline: false,
            hideCharacter: true,
            pinBoxColor: Colors.red,
            highlightPinBoxColor: Colors.green,
            onDone: (text){
              print(_textEditingController.text);
            },
            highlightColor: Colors.green,
            defaultBorderColor: Colors.black,
            hasTextBorderColor: Colors.green,
            maskCharacter: "=",
          ),
        ),
      ),
    );
  }
}
