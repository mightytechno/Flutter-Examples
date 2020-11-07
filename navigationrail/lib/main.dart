import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
        ),
        body: NavigationRailWidget(),
      ),
    );
  }
}

class NavigationRailWidget extends StatefulWidget {

  const NavigationRailWidget({
    Key key,
  }) : super(key: key);

  @override
  _NavigationRailWidgetState createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {

  int _selectedIndex = 0;
  bool _extended = false;

  List<Widget> containers = [
    Container(width: 200,height: 200,child: Image.network("https://www.news-medical.net/image.axd?picture=2018%2F4%2Fshutterstock_1By_stockcreations.jpg"),),
    Container(width: 200,height: 200,child: Image.network("https://goldbelly.imgix.net/uploads/product_image/image/46795/big-ass-jumbo-donut.58d7daaa6c5dcb0cb8142ab994f78210.jpg?ixlib=rails-3.0.2"),)
  ];

  var textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        NavigationRail(
          onDestinationSelected: (index){
              setState(() {
                _selectedIndex = index;
              });
          },
          leading: FlatButton(onPressed: (){
            setState(() {
              _extended = !_extended;
            });
          }, child: Icon(Icons.menu)),
          extended: _extended,
          labelType: _extended ? NavigationRailLabelType.none : NavigationRailLabelType.selected,
          backgroundColor: Colors.red,
          groupAlignment: 0,
          destinations: [
            NavigationRailDestination(label: Text("Drink",style: textStyle,),icon: Icon(Icons.local_drink,color: Colors.white,)),
            NavigationRailDestination(label: Text("Donuts",style: textStyle),icon: Icon(Icons.donut_small,color: Colors.white,))
          ], selectedIndex: _selectedIndex),
          Expanded(child: 
            Center(
              child: containers[_selectedIndex],
            )
          )
      ],
    );
  }
}