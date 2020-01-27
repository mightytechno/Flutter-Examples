import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: diamondTab,
    );
  }

  DefaultTabController get gradientTab => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.orangeAccent]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("APPS"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("MOVIES"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("GAMES"),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));

  DefaultTabController get diamondTab => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorPadding: EdgeInsets.only(left: 30, right: 30),
              indicator: ShapeDecoration(
                  color: Colors.redAccent,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.redAccent,
                      ))),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("APPS"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("MOVIES"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("GAMES"),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));

  DefaultTabController get diamondTab2 => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorPadding: EdgeInsets.only(left: 30, right: 30),
              indicator: ShapeDecoration(
                  color: Colors.redAccent,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.redAccent,
                      ))),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("APPS"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("MOVIES"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("GAMES"),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));

  DefaultTabController get roundTab => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));

  DefaultTabController get squareTab => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("APPS"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("MOVIES"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("GAMES"),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));

  DefaultTabController get defaultTab => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("APPS"),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("MOVIES"),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("GAMES"),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ));
}
