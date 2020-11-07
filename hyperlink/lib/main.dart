import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {


  var defaultText = TextStyle( color: Colors.black);
  var linkText = TextStyle( color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyperlink',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hyperlink'),
        ),
        body: Center(
          child: RichText(
            text:TextSpan(
              children: [
                  TextSpan(
                    style: defaultText,
                    text: "To learn more "
                  ),
                  TextSpan(
                    style: linkText,
                    text: "Click here",
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      var url = "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw";
                      if(await canLaunch(url)){
                        await launch(url);
                      } else{
                        throw "Cannot load Url";
                      }
                    } 
                  )

              ]
            )    
          
          ),
        ),
      ),
    );
  }
}