import 'package:flutter/material.dart';

// 测试Container组件的使用
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Image组件实例",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Image组件实例'),
            ),
            body:  _ImageDemo(),
        )
    );
  }
}

class _ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Image.network(
          "http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg",
          fit: BoxFit.fitWidth),
    );
  }

}
