import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  const IdeaCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10,20,10,20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
        BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 0),
            color: Color.fromRGBO(0, 0, 0, 0.1)),
      ]),
      child: Column(
        children: <Widget>[
          _buildTopSection(),
          _buildBottomSection(context)
        ],
      ),
    );
  }

  Container _buildBottomSection(BuildContext context) {
    return Container(
          margin: EdgeInsetsDirectional.only(top: 10),
          padding: EdgeInsets.zero,
          child: SizedBox(
            width: double.maxFinite,
            child: Wrap(
              runAlignment: WrapAlignment.start,
              direction: Axis.horizontal,
              runSpacing: 5,
              spacing: 5,
              children: getIdeaContainer(context),
            ),
          ),
        );
  }

  Container _buildTopSection() {
    return Container(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Flow State: what is it & How to Achieve it",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber
                                  ),
                                  alignment: AlignmentDirectional.center,
                                  width: 25,
                                  height: 25,
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text("IDEAS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red
                                  ),
                                  alignment: AlignmentDirectional.center,
                                    width: 25,
                                    height: 25,
                                  child: Icon(Icons.gamepad,size: 15,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text("guardian.com",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45)),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  child: Image.network(
                    "https://miro.medium.com/max/3200/1*QBxc5-QaDrLZV9VPHcqG0Q.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              )
            ],
          ),
        );
  }

  List<DottedBorder> getIdeaContainer(context) {
    List<DottedBorder> conList = [];
    for (var i = 0; i < 5; i++) {
      conList.add(DottedBorder(
        color: Colors.black45,
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: Radius.circular(8),
        padding: EdgeInsets.zero,
        child: Container(
          width: (MediaQuery.of(context).size.width - 55) / 4,
          height: 50,
          child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Procrastination is not",
                style: TextStyle(color: Colors.black54),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              )),
        ),
      ));
    }

    return conList;
  }
}
