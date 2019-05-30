import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Weclome to Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Wecome to Flutteer'),
            ),
            body: Center(
                child: Text('Hello World1')
            )
        )
    );
  }
}
