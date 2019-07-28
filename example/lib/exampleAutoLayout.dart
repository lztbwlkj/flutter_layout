import 'package:flutter/material.dart';
import 'package:flutter_layout/flutter_layout.dart';

class ExampleAutoLayout extends StatefulWidget {
  @override
  _ExampleAutoLayoutState createState() => _ExampleAutoLayoutState();
}

class _ExampleAutoLayoutState extends State<ExampleAutoLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildVerticalLayout());
  }

  Widget _buildVerticalLayout() {
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //width：250*3 = 750
              Container(
                width: AutoLayout.deviceWidthDp,
                height: AutoLayout().pxToDp(150),
                color: Colors.red,
              ),
              // Container(
              //   width: AutoLayout.covert().pxToDp(250),
              //   height: AutoLayout.covert().pxToDp(300),
              //   color: Colors.blue,
              // ),
              // Container(
              //   width: AutoLayout.covert().pxToDp(250),
              //   height: AutoLayout.covert().pxToDp(300),
              //   color: Colors.yellow,
              // )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: AutoLayout.covert().pxToDp(375),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.deepPurple,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(375),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.blue,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: AutoLayout().pxToDp(250),
                height: AutoLayout().pxToDp(300),
                color: Colors.red,
                child: Center(
                  child: Text(
                    '这是一段测试文字，跟随系统变化的字体',
                    style: TextStyle(
                        fontSize: AutoLayout(allowFontScaling: true).setSp(24)),
                  ),
                ),
              ),
              Container(
                width: AutoLayout.covert().pxToDp(250),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.deepPurple,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(250),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.red,
                child: Center(
                  child: Text(
                    '这是一段测试文字，它不跟随系统变化',
                    style: TextStyle(fontSize: AutoLayout().setSp(24)),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                //将像素375px转化为dp
                width: AutoLayout.covert().dpToDp(375 / 2.0375),
                height: AutoLayout.covert().dpToDp(300 / 2.0375),
                color: Colors.green,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(375),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.blue,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: AutoLayout.covert().pxToDp(120),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.red,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(150),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.black,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(150),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.white,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(150),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.redAccent,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(150),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.greenAccent,
              ),
              Container(
                width: AutoLayout.covert().pxToDp(30),
                height: AutoLayout.covert().pxToDp(300),
                color: Colors.lightBlueAccent,
                child: Center(
                  child: Text('这是30dp'),
                ),
              ),
            ],
          ),
          Text('设备宽度:${AutoLayout.deviceWidth}px'),
          Text('设备高度:${AutoLayout.deviceHeight}px'),
          Text('设备高度:${AutoLayout.deviceWidthDp}dp'),
          Text('设备高度:${AutoLayout.deviceHeightDp}dp'),
          Text('设备的像素密度:${AutoLayout.devicePixelRatio}'),
          Text('底部安全区距离:${AutoLayout.bottomBarHeight}dp'),
          Text('状态栏高度:${AutoLayout.statusBarHeight}dp'),
          Text('系统的字体缩放比例:${AutoLayout.textScaleFactory}'),
          Text(
            '实际宽度的dp与设计稿px的比例:${AutoLayout.covert().scaleWidth}',
            textAlign: TextAlign.center,
          ),
          Text(
            '实际高度的dp与设计稿px的比例:${AutoLayout.covert().scaleHeight}',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
