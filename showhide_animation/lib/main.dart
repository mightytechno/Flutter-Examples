import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FadeAnimation(),
    );
  }
}

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({
    Key key,
  }) : super(key: key);

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
                child: Container(
              height: 200,
              color: Colors.red,
            )),
            Flexible(
              child: AnimatedOpacity(
                opacity: loading ? 0 : 1,
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                child: Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
              ),
            ),
            Flexible(
                child: Container(
              height: 200,
              color: Colors.blueAccent,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          loading = !loading;
        });
      }),
    );
  }
}
