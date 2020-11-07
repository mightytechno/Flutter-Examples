import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(''),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.search),Icon(Icons.notifications)],
        ),
        body: MovieApp(),
      ),
    );
  }
}

class MovieApp extends StatefulWidget {
  const MovieApp({
    Key key,
  }) : super(key: key);

  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {

  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1,viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
                      child: PageView.builder(
              itemCount: 2,
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                  print(currentPage);
                });
              },
              itemBuilder: (context,position){
              return ImageSlider(position);
              
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
              )
            ],
          )
        ],
      ),

    );
  }

  Widget ImageSlider(position) {
    return AnimatedBuilder(
      animation: _pageController, 
      builder: (context,widget){
        return SizedBox(
          width: 200,
          height: 600,
          child: widget,
        );
     },
     child: Column(
       children: [
          Stack(

            children: [
              
              Image.network("https://see.news/wp-content/uploads/2020/03/New-Blooshot-Poster-1280x720-1.png",height: 220,fit: BoxFit.cover, width: double.infinity,),
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.black26,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                  children: [
                    Text("Bloodshot",style: TextStyle(color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("English",style: TextStyle(color: Colors.white)),
                        Text("Hindi",style: TextStyle(color: Colors.white)),
                        Text("Tamil",style: TextStyle(color: Colors.white)),
                        ],
                    )
                  ],
                ),
              ),
            ],
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text("Action",style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text("Adventure",style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text("Sci-fi",style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
          Text("UA | June 15,2020",style: TextStyle(color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2 - 10,
                height: 50,
                decoration: BoxDecoration(

                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border:  Border.all(width: 1,color: Colors.white)
                ),
                child: Center(child: Text("WATCH TRAILER",style:TextStyle(color: Colors.white))),),
              Container(
                width: MediaQuery.of(context).size.width/2 - 10,
                height: 50,
                decoration: BoxDecoration(

                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border:  Border.all(width: 1,color: Colors.red)
                ),
                child: Center(child: Text("BOOK NOW",style:TextStyle(color: Colors.white))),)
            ],
          ),
          Text("Know more >>",style: TextStyle(color: Colors.white),),
       ],
     ),
     );
  }
}