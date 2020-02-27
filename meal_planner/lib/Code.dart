import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      home: new MealPage(),
    );
  }
}

class MealPage extends StatefulWidget {
  const MealPage({
    Key key,
  }) : super(key: key);

  @override
  _MealPageState createState() => _MealPageState();
}

var metaText = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

var topicText =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22);

var menuText =
    TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18);

var mainTopicText = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

class _MealPageState extends State<MealPage> {
  List menuItems = ["Beakfast", "Lunch", "Snacks", "Dinner", "Dessert"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 246, 119, 77),
        ),
        backgroundColor: Colors.white,
        title: Text(''),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
            Icons.search,
            color: Color.fromARGB(255, 246, 119, 77),
          ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Good Morning!",
                    style: mainTopicText,
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 40,
                            ),
                            child: Text(
                              menuItems[index],
                              style: menuText,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Favourite",
                      style: topicText,
                    ),
                  ),
                ],
              ),
            ),
            SliderImage(metaText: metaText),
          ],
        ),
      ),
    );
  }
}

class SliderImage extends StatefulWidget {
  const SliderImage({
    Key key,
    @required this.metaText,
  }) : super(key: key);

  final TextStyle metaText;

  @override
  _SliderImageState createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  PageController pageController;
  double currentPageValue = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.75);
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 280,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, position) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (context, widget) {
                  double value = 1;
                  if (pageController.position.haveDimensions) {
                    value = pageController.page - position;
                    value = (1 - (value.abs() * 0.2)).clamp(0.0, 1.0);
                  }
                  return Center(
                    child: SizedBox(
                      height: Curves.easeInOut.transform(value) * 280,
                      width: Curves.easeInOut.transform(value) * 300,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Container(
                              height: 550,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 246, 119, 77),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Container(
                                  width: 180,
                                  height: 180,
                                  margin: EdgeInsets.all(5),
                                  child: Image.network(
                                    "https://www.freepnglogos.com/uploads/food-png/food-sutherland-foodservice-12.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Egg Toast",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.timer,
                                                    color: Colors.white,
                                                    size: 20),
                                                Text(
                                                  "20 Min",
                                                  style: metaText,
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.burst_mode,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                  Text("500cal",
                                                      style: metaText)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: getIndicator(currentPageValue),
              ),
        )
      ],
    );
  }

  List<Widget> getIndicator(position) {
    List<Widget> incicators = [];
    for (var x = 0; x < 3; x++) {
      incicators.add(Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: position == x
                  ? Color.fromARGB(255, 246, 119, 77)
                  : Color.fromARGB(255, 226, 226, 226),
              shape: BoxShape.circle),
        ),
      ));
    }
    return incicators;
  }
}
