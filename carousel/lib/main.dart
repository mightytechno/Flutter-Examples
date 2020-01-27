import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(

          title: 'Flutter Demo Home Page'),
    );
  }
}

List<Widget> widgetList = List();

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller;

  List<String> images = [
    'https://cdn3.movieweb.com/i/article/evkgjS87YJyxAttm7AW0s2V6c6Wqj5/798:50/How-To-Train-Your-Dragon-3-Movie-Review.jpg',
    'https://d23.com/app/uploads/2017/11/1180w-600h_110217_reasons-we-love-wreck-it-ralph-780x440.jpg',
    'https://d1t80wr11ktjcz.cloudfront.net/wp-content/uploads/2018/11/secret.life_.pets_.movie_-e1541608557369.jpeg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {});
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Slider"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: images.length,
            itemBuilder: (context, position) {
              return imageSlider(position);
            }));
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget) {
        double value = 1;
        if (controller.position.haveDimensions) {
          value = controller.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 200,
            width: Curves.easeInOut.transform(value) * 380,
            child: widget,
          ),
        );
      },
      child: Container(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Image.network(images[index], fit: BoxFit.cover)),
      ),
    );
  }
}
