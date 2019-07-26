import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil()..init(context);
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
                        width: ScreenUtil.getInstance().setWidth(360),
                        height: ScreenUtil().setHeight(300),
                        color: Colors.red,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(360),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.blue,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(360),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.red,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.getInstance().setWidth(180),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.black,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(540),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: ScreenUtil().setWidth(360),
                        height: ScreenUtil().setHeight(300),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            '这是跟随系统变化的字体',
                            style: TextStyle(
                                fontSize: ScreenUtil(allowFontScaling: true)
                                    .setSp(15)),
                          ),
                        ),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(360),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.blue,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(360),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.red,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.getInstance().setWidth(180),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.black,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(540),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.getInstance().setWidth(100),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.red,
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(980),
                        height: ScreenUtil.getInstance().setHeight(300),
                        color: Colors.blue,
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
