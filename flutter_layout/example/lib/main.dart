import 'package:flutter/material.dart';

import 'package:flutter_layout/flutter_layout.dart';
import 'package:flutter_layout_example/exampleAutoLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterAutoLayout',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'FlutterAutoLayout Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    AutoLayout.instance = AutoLayout(
        designWidth: 750, designHeight: 1334, designDevicePixelRatio: 2.0375)
      ..init(context);
    print("statusBarHeight : ${AutoLayout.statusBarHeight}");
    print("bottomBarHeight : ${AutoLayout.bottomBarHeight}");
    print("deviceWidth : ${AutoLayout.deviceWidth}");
    print("deviceHeight : ${AutoLayout.deviceHeight}");
    print("deviceWidthDp : ${AutoLayout.deviceWidthDp}");
    print("deviceHeightDp : ${AutoLayout.deviceHeightDp}");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ExampleAutoLayout(),
    );
  }
}
