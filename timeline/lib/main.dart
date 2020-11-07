import 'package:flutter/material.dart';
import 'TimelineCard.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timeline'),
        ),
        body: Center(
          child: TimeLine(),
        ),
      ),
    );
  }
}

class TimeLine extends StatefulWidget {
  const TimeLine({
    Key key,
  }) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  List<Color> colors = [Colors.red,Colors.green,Colors.blue];
  List<TimelineCard> timeline;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeline = _getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: timeline.length,
        itemBuilder: (context,index){
          return Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 2,
                      height: 50,
                      color: index == 0 ? Colors.white : Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: colors[(index + 1) % 3],
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(timeline[index].icon ,color: Colors.white),
                    ),
                    Container(
                      width: 2,
                      height: 50,
                      color: index == timeline.length - 1 ? Colors.white : Colors.black,
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration:BoxDecoration(
                      color: Colors.white,
                      border: Border(top: BorderSide(width: 4,color: Colors.blueAccent)),
                      boxShadow: [BoxShadow(
                        blurRadius: 10,
                        color: Colors.black26
                      )]
                    ),
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(timeline[index].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(timeline[index].description,style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),

                  ))
              ],
            ),
          );
        }),
    );
  }

   List<TimelineCard> _getCards(){
    List<TimelineCard> timelineCard = [];
    
    timelineCard.add(TimelineCard("Done", "Task completed with move to the production", Icons.check));
    timelineCard.add(TimelineCard("Review", "Move the existing task to the review state to finalize", Icons.table_chart));
    timelineCard.add(TimelineCard("Priority Increase", "Client increase the priority", Icons.priority_high));
    timelineCard.add(TimelineCard("In Progress", "Started the development", Icons.train));
    timelineCard.add(TimelineCard("Train", "Train the management for task", Icons.place));
    timelineCard.add(TimelineCard("Create", "Create a new task from client request", Icons.create));
    timelineCard.add(TimelineCard("Review", "Move the existing task to the review state to finalize", Icons.table_chart));
    timelineCard.add(TimelineCard("Priority Increase", "Client increase the priority", Icons.priority_high));
    timelineCard.add(TimelineCard("In Progress", "Started the development", Icons.train));
    timelineCard.add(TimelineCard("Train", "Train the management for task", Icons.place));

    return timelineCard;
  }



}