import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BurnText(),
    );
  }
}

class BurnText extends StatefulWidget {
  const BurnText({
    Key key,
  }) : super(key: key);

  @override
  _BurnTextState createState() => _BurnTextState();
}

class _BurnTextState extends State<BurnText> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
     _animationController = AnimationController(vsync:this,duration: Duration(milliseconds: 2000));
      _animationController.repeat(reverse: true);
      _animation =  Tween(begin: 0.0,end: 1.0).animate(_animationController)..addListener((){
        setState(() {
          
        });
      })..addStatusListener((status) {
        
      });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ShaderMask(
            
            shaderCallback: (rect) {
              //  return LinearGradient(
            return LinearGradient(
                stops: [_animation.value - 0.5 ,_animation.value , _animation.value + 0.5 ],
                colors: <Color>[Color(int.parse("0xFF00c3ff")), Color(int.parse("0xFFffff1c")),Color(int.parse("0xFF00c3ff"))],
              ).createShader(rect);
            },

            child: Text(
              'Text Animation',
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),)),
        ),
      ),
    );
  }
}