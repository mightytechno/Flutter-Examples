import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: TextRevel(),
        ),
      ),
    );
  }
}

class TextRevel extends StatefulWidget {
  const TextRevel({
    Key key,
  }) : super(key: key);

  @override
  _TextRevelState createState() => _TextRevelState();
}

class _TextRevelState extends State<TextRevel> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation = Tween(begin: 0.0,end:1.1).animate(_animationController)..addListener(() {
      setState(() {
        
      });
    });
    _animationController.repeat(reverse: false);
  }
  



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShaderMask(
        shaderCallback: (bounds) => 
            LinearGradient(
              transform: Tran,
              end: Alignment.topCenter,begin:Alignment.bottomCenter ,colors: [Colors.red,Colors.white],stops: [_animation.value - 0.1,_animation.value]).createShader(bounds),
        child: const Text('I Love You',style: TextStyle(fontSize: 50,color: Colors.white),)),
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
}