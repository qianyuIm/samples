import 'package:flutter/material.dart';

class MyRouterName {
  /// 闪屏页
  static const String splash = 'splash';
  /// 首页
  static const String tab = '/';
  /// 应用设置页面
  static const String setting = 'settingPage';

}
class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRouterName.setting:
        
        break;
        case MyRouterName.tab:
        break;
        case MyRouterName.setting: 
        break;
      default:
      return MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            body: Center(
             child: Text('No route defined for ${settings.name}')
            ),
          );
        },
      );
    }
  }
}