import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        
        body: GradientText(),
      ),
    );
  }
}

class GradientText extends StatefulWidget {
  const GradientText({
    Key key,
  }) : super(key: key);

  @override
  _GradientTextState createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin:  0.0 , end: 1.0).animate(_animationController)..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ShaderMask(
          
          child: Text("Text Animation", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          shaderCallback: (rect){

          return LinearGradient(
            stops: [_animation.value - 0.5,_animation.value,_animation.value + 0.5],
            colors: [
              Color(int.parse("0xFF00c3ff")),
              Color(int.parse("0xFFffff1c")),
              Color(int.parse("0xFF00c3ff"))]
          ).createShader(rect);

        }),
      ),
    );
  }
}