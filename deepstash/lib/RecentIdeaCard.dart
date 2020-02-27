import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class RecentIdeaCard extends StatelessWidget {
  const RecentIdeaCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 200,
      child: Container(
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.white,width: 5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft:  Radius.circular(10),bottomRight:  Radius.circular(40),topRight:  Radius.circular(10)),
                boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Color.fromRGBO(0, 0, 0, 0.1)),
              ]),
              child: Container(
                height: 155,
                width: 250,
                child: Column(
                  children: <Widget>[
                    Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                    child: Text(
                      "10",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("How do you think about your carrier",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
