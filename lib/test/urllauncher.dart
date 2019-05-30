import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "User url launcher",
      home:Scaffold(
        appBar: AppBar(
          title: Text("use url"),
        ),
        body: RaisedButton(
          onPressed:_launchURL,
          child: Text("open url"),
        ),
      )
    );
  }

}



_launchURL() async{
  const url = "https://www.baidu.com";
  if ( await canLaunch(url)){
    await launch(url);
  } else{
    throw "Could not launch $url";
  }
}


