import 'dart:ui';

import 'package:flutter/widgets.dart';

enum Aspect {
  /// 宽适配
  aspectWidth,

  /// 高适配
  aspectHeight
}

class AutoLayout {
  static AutoLayout instance = new AutoLayout();

  static AutoLayout covert() => instance;

  /// 设计稿的宽
  int designWidth;

  /// 设计稿的高
  int designHeight;

  /// 设计稿的像素密度(DPI/160) eg:750*1334的dpi=326，因此像素密度为326/160 = 2.0375
  double designDevicePixelRatio;

  /// 适配方式
  Aspect aspect;

  ///字体是否跟随系统缩放
  bool allowFontScaling;

  /// 物理设备的宽
  double _deviceWidth;

  /// 物理设备的高
  double _deviceHeight;

  /// 宽适配时候的比例
  static double _ratioW;

  /// 高适配时候的比例
  static double _ratioH;

  /// 设备的像素密度
  static double _devicePixelRatio;

  ///状态栏的高度
  static double _statusBarHeight;

  ///底部安全区域的高度
  static double _bottomBarHeight;

  ///文字适配比例
  static double _textScaleFactor;

  ///屏幕的宽度
  static double _screenWidth;

  ///屏幕的高度
  static double _screenHeight;

  ///设备信息
  static MediaQueryData _mediaQueryData;

  AutoLayout({
    this.designWidth = 1080,
    this.designHeight = 1920,
    this.allowFontScaling = false,
    this.aspect = Aspect.aspectWidth,
    this.designDevicePixelRatio = 3.0,
  });

  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;

    _devicePixelRatio = window.devicePixelRatio;
    _deviceWidth = window.physicalSize.width;
    _deviceHeight = window.physicalSize.height;
    _ratioW = _deviceWidth / designWidth;
    _ratioH = _deviceHeight / designHeight;

    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = mediaQuery.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;

    print(
        "_devicePixelRatio:$_devicePixelRatio _deviceWidth:$_deviceWidth _deviceHeight:$_deviceHeight");
    print(
        "_designWidth : $designWidth _desginHeight : $designHeight __designDevicePixelRatio : $designDevicePixelRatio");
    print(
        "_ratioW : $_ratioW _rationH : $_ratioH,screenWidth = $_screenWidth,screenHeight = $_screenHeight");
  }

  static MediaQueryData get mediaQueryData => _mediaQueryData;

  ///每个逻辑像素的字体像素数，字体的缩放比例
  static double get textScaleFactory => _textScaleFactor;

  ///设备的像素密度
  static double get devicePixelRatio => _devicePixelRatio;

  ///当前设备宽度 dp
  static double get deviceWidthDp => _screenWidth;

  ///当前设备高度 dp
  static double get deviceHeightDp => _screenHeight;

  ///当前设备宽度 px
  static double get deviceWidth => _screenWidth * _devicePixelRatio;

  ///当前设备高度 px
  static double get deviceHeight => _screenHeight * _devicePixelRatio;

  ///状态栏高度 dp 刘海屏会更高
  static double get statusBarHeight => _statusBarHeight;

  ///底部安全区距离 dp
  static double get bottomBarHeight => _bottomBarHeight;

  ///实际的dp与设计稿px的比例
  get scaleWidth => _screenWidth / instance.designWidth;
  get scaleHeight => _screenHeight / instance.designHeight;

  /// 将设计稿的px转换为dp
  double pxToDp(double px) {
    if (aspect == Aspect.aspectWidth) {
      return px * _ratioW / _devicePixelRatio;
    } else {
      return px * _ratioH / _devicePixelRatio;
    }
  }

  /// 将如果设计稿是dp的话，那么就直接传dp，但前提要设置对像素密度
  double dpToDp(double dp) {
    if (aspect == Aspect.aspectWidth) {
      return (dp * designDevicePixelRatio) * _ratioW / _devicePixelRatio;
    } else {
      return (dp * designDevicePixelRatio) * _ratioH / _devicePixelRatio;
    }
  }

  double setSp(double fontSize) => allowFontScaling
      ? fontSize * scaleWidth
      : (fontSize * scaleWidth) / _textScaleFactor;
}
