import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
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
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    var curAni = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    animation = Tween(begin: 0.0, end: 0.8).animate(curAni)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Center(
            child: Stack(
              children: [
                Positioned(
                  top: 70,
                  left: 55,
                  child: Text("${(animation.value * 100).toInt()} %",style: TextStyle(fontSize: 50),)),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: GestureDetector(
                    onTap: (){
                      controller.forward(from: 0.0);
                    },
                                      child: CircularProgressIndicator(
                        backgroundColor: Colors.black,
                        value: animation.value,
                        strokeWidth: 5,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.amber,
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
