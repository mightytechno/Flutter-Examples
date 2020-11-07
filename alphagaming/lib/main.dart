import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: LogInUI(),
      ),
    );
  }
}

class LogInUI extends StatefulWidget {
  const LogInUI({
    Key key,
  }) : super(key: key);

  @override
  _LogInUIState createState() => _LogInUIState();
}

class _LogInUIState extends State<LogInUI> {

  static Color colour = Color.fromARGB(255, 22, 147, 177);
  bool isRemember = true;

  var inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: colour, width: 1)
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Image.asset("assets/images/alplogo.png",width: 100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 500,
              child: Row(
                children: <Widget>[
                  Flexible(child:Center(child: Image.asset("assets/images/banner.png",width: 600,))),
                  Flexible(child:
                  Center(
                    child: Container(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Username",style: TextStyle(color: colour,fontSize: 20)),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: inputBorder,
                              enabledBorder: inputBorder
                            ),
                          ),
                          Container(height: 20,),
                          Text("Password",style: TextStyle(color: colour,fontSize: 20),),
                          TextField(decoration: InputDecoration(
                              focusedBorder: inputBorder,
                              enabledBorder: inputBorder
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Checkbox(
                                      activeColor: colour,
                                      value: isRemember
                                    , onChanged: (checked){
                                      setState(() {
                                        isRemember = checked;
                                      });
                                    }),
                                    Text("Remember Me",style: TextStyle(color: colour),)
                                  ],
                                ),
                                FlatButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(color: colour),))
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 52,
                                                        child: RaisedButton(onPressed: (){},
                              color: colour,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                
                              ),
                              child: Center(child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 20),),),
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Don't have a account? "),
                                GestureDetector(
                                  onTap: (){
                                    
                                  },
                                  child: Text("SIGN UP",style: TextStyle(color: colour),))
                              ],
                            )
                            
                        ],
                      ),
                    ),
                  ) 
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}