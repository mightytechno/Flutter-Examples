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
        body: TextWidget(),
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  const TextWidget({
    Key key,
  }) : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  TextEditingController controller;
  bool isNameValid = true;
  RegExp regExp = new RegExp(
    r'^[a-zA-Z]+$',
  );

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          onChanged: (value) {
            if (regExp.hasMatch(value)) {
              isNameValid = true;
            } else {
              isNameValid = false;
            }
            setState(() {});
          },
          decoration: InputDecoration(
              labelText: "Enter Name",
              errorText: isNameValid ? null : "Invalid name"),
          controller: controller,
        ),
      ),
    );
  }
}
