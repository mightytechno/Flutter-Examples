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
            child: CheckBoxTile(),
          ),
        ),
      ),
    );
  }
}

class CheckBoxTile extends StatefulWidget {
  const CheckBoxTile({
    Key key,
  }) : super(key: key);

  @override
  _CheckBoxTileState createState() => _CheckBoxTileState();
}

bool _checked = false;

class _CheckBoxTileState extends State<CheckBoxTile> {
  @override
  Widget build(BuildContext context) {
    return 
    CheckboxListTile(
      title: Text("Food"),
      secondary: Icon(Icons.fastfood),
      value: _checked,
      activeColor: Colors.red,
      controlAffinity: ListTileControlAffinity.leading,
      subtitle: Text("Check for fast food"),
      onChanged: (checked){
        setState(() {
          _checked = checked;
        });
      },
    );
  }
}