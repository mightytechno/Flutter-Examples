import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue
);

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber
  )
);

bool _light = true;
Future<bool> _lightF;

class _DarkLightThemeState extends State<DarkLightTheme> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  _saveTheme() async{
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', _light);
  }

  _getTheme() async{
    _lightF = _prefs.then((SharedPreferences prefs) {
        return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    });
    _light = await _lightF;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: _lightF,
      builder: (context,snapshot){

      return  MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Material App',
      darkTheme: _darkTheme,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child:Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Name"
                  ),
                ),
                RaisedButton(
                  child: Text("Click Me"),
                  onPressed: (){

                }),
                Switch(value: _light, onChanged: (state){
                  setState(() {
                    _light = state;
                  });
                  _saveTheme();
                }),
              ],
            ),
          ),
        )
    );
    });
  }
}