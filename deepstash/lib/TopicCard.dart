import 'package:deepstash/Utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  int index;
  TopicCard({Key key,this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 150,
      height: 120,
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
          BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              color: Color.fromRGBO(0, 0, 0, 0.1)),
        ]),
        child: Container(
          height: 120,
          width: 150,
          child: Column(
            children: <Widget>[
              Utils.icons[index],
              Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Self Improvement",
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
