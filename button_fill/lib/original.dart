import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FillButton(),
    );
  }
}

class FillButton extends StatefulWidget {
  const FillButton({
    Key key,
  }) : super(key: key);

  @override
  _FillButtonState createState() => _FillButtonState();
}

class _FillButtonState extends State<FillButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _curve;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    _curve = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutCubic);
    _animation = Tween(begin: 0.0, end: 250.0).animate(_curve)
      ..addListener(() {
        setState(() {});
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
          child: Stack(
            children: <Widget>[
              Container(
                width: _animation.value,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(int.parse("0xFF00C9FF")),
                      Color(int.parse("0xFF92FE9D"))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  if(_animationController.isCompleted){
                    _animationController.reverse();
                  } else{
                   _animationController.forward();
                  }
                },
                child: Container(
                  width: 250,
                  height: 60,
                  child: Center(
                      child: Text(
                    "CLICK ME",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black26),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
