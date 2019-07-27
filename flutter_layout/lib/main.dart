import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_layout/AutoLayout.dart';
import 'package:flutter_layout/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AutoLayout.instance = AutoLayout(allowFontScaling: true)..init();
    print("statusBarHeight : ${AutoLayout.statusBarHeight}");
    print("bottomBarHeight : ${AutoLayout.bottomBarHeight}");
    print("physicalWidth : ${AutoLayout.physicalWidth}");
    print("physicalHeight : ${AutoLayout.physicalHeight}");
    print("physicalWidthDp : ${AutoLayout.physicalWidthDp}");
    print("physicalHeightDp : ${AutoLayout.physicalHeightDp}");

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //对比切换布局框架查看效果HomePage
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var ratio = MediaQuery.of(context).devicePixelRatio;
    // print("width : ${size.width} height : ${size.height} ratio : $ratio");
    // 设计稿是 wxh = 1080 x 1920 像素密度 3
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: AutoLayout.covert().pxToDp(360),
                    height: AutoLayout().pxToDp(300),
                    color: Colors.red,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(360),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.blue,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(360),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.red,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: AutoLayout.covert().dpToDp(180),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.black,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(540),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.blue,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: AutoLayout().pxToDp(360),
                    height: AutoLayout().pxToDp(300),
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '这是跟随系统变化的字体',
                        style: TextStyle(
                            fontSize:
                                AutoLayout(allowFontScaling: false).setSp(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(360),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.blue,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(360),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.red,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: AutoLayout.covert().dpToDp(180),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.black,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(540),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.blue,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: AutoLayout.covert().pxToDp(100),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.red,
                  ),
                  Container(
                    width: AutoLayout.covert().pxToDp(980),
                    height: AutoLayout.covert().pxToDp(300),
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
