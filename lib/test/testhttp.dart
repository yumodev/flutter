import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Http请求实例",
      home:Scaffold(
        appBar: AppBar(
          title: Text("Http请求"),
        ),
        body: RaisedButton(
          onPressed:_openUrl,
          child: Text("发起http请求"),
        ),
      )
    );
  }

}



_openUrl() async{
  const url = "http://www.baidu.com";
  http.get(url).then((response){
    print("状态：${response.statusCode}");
    print("正文：${response.body}");
  }

  );

}


