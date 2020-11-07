import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

 
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
          child: LottiAnim(),
        ),
      ),
    );
  }
}

class LottiAnim extends StatefulWidget {
  const LottiAnim({
    Key key,
  }) : super(key: key);

  @override
  _LottiAnimState createState() => _LottiAnimState();
}

class _LottiAnimState extends State<LottiAnim> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this)
    ..value = 0
    ..addListener(() {
      setState(() {
        
      });
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Lottie.asset(
              'anim/guitar.json',
              width: 200,
              onLoaded: (composition) {
                setState(() {
                  _animationController.duration = composition.duration;
                });
              },
              controller: _animationController
              
              ),
        ),
        
        FlatButton(
          
          textColor: Colors.red,
          onPressed: (){
            _animationController.repeat(
                  min: 0,
                  max: 1,
                  reverse: true,
                  period: Duration(seconds: 4),
                );
        }, child: Text("Click"))
      ],
    );
  }
}
