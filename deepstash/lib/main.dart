import 'package:deepstash/IdeaCard.dart';
import 'package:deepstash/RecentIdeaCard.dart';
import 'package:deepstash/TopicCard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DeepStash(),
    );
  }
}

class DeepStash extends StatefulWidget {
  DeepStash({
    Key key,
  }) : super(key: key);

  @override
  _DeepStashState createState() => _DeepStashState();
}

class _DeepStashState extends State<DeepStash> {
  var topicStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28);

  var subTopicStyle = TextStyle(color: Colors.black, fontSize: 25);

  List<Widget> _widgetOptions;
  int _currentBottomNav = 0;

  @override
  Widget build(BuildContext context) {
    _widgetOptions = [_mainContent(),_bookmarkContent()];

    return Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext bc, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: _widgetOptions.elementAt(_currentBottomNav),
              ),
            );
          },
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      );
      
  }

  Container _buildBottomNavigation() {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -10)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: (){
                  setState(() {
                    _currentBottomNav = 0;
                  });
                },
               icon:Icon(Icons.home,color: _currentBottomNav == 0 ? Colors.amber : Colors.black26,size: 40),
              ),
           Container(width: 40,),
           IconButton(
                onPressed: (){
                  setState(() {
                    _currentBottomNav = 1;
                  });
                },
               icon:Icon(Icons.bookmark,color: _currentBottomNav == 1 ? Colors.amber : Colors.black26,size: 40),
              )
          ],
        ),
      );
  }

  Container _mainContent() {
    return Container(
            color: Color.fromRGBO(236, 232, 230, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _buildAppBar(),
                _buildTopicSection(),
                _buildIdeaCards(),
                _buildTopic("Recent", "Saved Ideas"),
                _buildRecentIdeaCards(),
                _buildTopic("Topic"),
                _buildTopicCards()
              ],
            ),
          );
  }

  AppBar _buildAppBar({topicText="deepstash",iconShow=true}) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          iconShow ? Container(
            child: Image.asset(
              "assets/images/deepstash.png",
              height: 20,
            ),
            padding: EdgeInsetsDirectional.only(end: 5),
          ) : Container(),
          Text(
            topicText,
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
      centerTitle: true,
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.black45,
          size: 30,
        ),
        GestureDetector(
              onTap: (){
                
              },
              child: Container(
              width: 30,
              
              child: Image.asset(
                "assets/images/user.png",
              )),
        )
      ],
    );
  }

  Padding _buildTopicSection() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Todays's",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(46, 49, 70, 1)),
            ),
            Text("Recommendations", style: TextStyle(fontSize: 20)),
            Text("7 STORIES : 23 IDEAS",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26)),
          ],
        ),
      );
    }

  Container _buildIdeaCards() {
      return Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext bc, index) {
            return IdeaCard();
          },
        ),
      );
    }

  Container _buildTopicCards() {
      return Container(
        height: 140,
        
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext bc, index) {
            return TopicCard(index: index,);
          },
        ),
      );
    }

  Container _bookmarkContent() {
    return Container(
            color: Color.fromRGBO(236, 232, 230, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _buildAppBar(topicText: "Your Ideas",iconShow: false),
                _buildIdeaCards(),
              ],
            ),
          );
  }

  Padding _buildTopic(mainTopic, [subtopic]) {
    if (subtopic != null) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mainTopic,
              style: topicStyle,
            ),
            Text(
              "Saved Ideas",
              style: subTopicStyle,
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mainTopic,
              style: topicStyle,
            ),
          ],
        ),
      );
    }
  }

  Container _buildRecentIdeaCards() {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext bc, index) {
          return RecentIdeaCard();
        },
      ),
    );
  }

}
