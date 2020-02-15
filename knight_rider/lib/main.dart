import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Knight Rider',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({
    Key key,
  }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
  _animationController = AnimationController(vsync:this,duration: Duration(milliseconds: 300));
      _animationController.repeat(reverse: true);
      _animation =  Tween(begin: 0.0,end: 6.0).animate(_animationController)..addListener((){
        setState(() {
          
        });
      });
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Knight Rider'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                height: 10,
                color: _animation.value < 1 ? Colors.red : Colors.black,
              ),
            ),
            Expanded(
              child: Container(
                height: 10,
                color: _animation.value > 1 &&  _animation.value < 2 ? Colors.red : Colors.black,
              ),
            ),
            Expanded(
                child: Container(
                width: 50,
                height: 10,
                color: _animation.value > 2 &&  _animation.value < 3 ? Colors.red : Colors.black,
              ),
            ),
            Expanded(
                          child: Container(
                width: 50,
                height: 10,
                color: _animation.value > 3 &&  _animation.value < 4 ? Colors.red : Colors.black,
              ),
            ),
            Expanded(
                          child: Container(
                width: 50,
                height: 10,
                color: _animation.value > 4 &&  _animation.value < 5 ? Colors.red : Colors.black,
              ),
            ),
            Expanded(
                          child: Container(
                width: 50,
                height: 10,
                color: _animation.value > 5 &&  _animation.value < 6 ? Colors.red : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}