import 'package:flutter/material.dart';

// 测试Container组件的使用
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "容器组件实例",
        home: Scaffold(
            appBar: AppBar(
              title: Text('容器组件实例'),
            ),
            body: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(
                      color: Colors.grey,
                      width: 8,
                    ),
                    borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0))

                  ),
                  child: Text(
                      'Flutter',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28.0),
                  ),
                )
            )
        )
    );
  }
}
