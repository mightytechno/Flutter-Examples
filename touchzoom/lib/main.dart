import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Double Tap Zoom'),
        ),
        body: Center(
          child: TouchZoom(),
        ),
      ),
    );
  }
}

class TouchZoom extends StatefulWidget {
  const TouchZoom({
    Key key,
  }) : super(key: key);

  @override
  _TouchZoomState createState() => _TouchZoomState();
}

class _TouchZoomState extends State<TouchZoom> with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController  = new AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 1.0,end: 3.0).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))..addListener(() {
        setState(() {
          
        });
    });
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        if(_animationController.isCompleted){
          _animationController.reverse();
        } else{
          _animationController.forward();
        }
      },
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.diagonal3(Vector3(_animation.value,_animation.value,_animation.value)),
        child: Image.network("https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",width: 200,height: 200,)));
  }
}