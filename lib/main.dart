import 'package:flutter/material.dart';
import 'package:hello_world/pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final routes={
      '/form': (context)=>FormPage(),
      '/search': (context, {arguments})=>SearchPage(arguments: arguments)
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings) {
        // 统一处理
        final String? name = settings.name;
        print(settings.name);
        final Function pageContentBuilder = routes[name] as Function; // 这一步是获取上面自定义变量中map对应的值

        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments)
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context)
            );
            return route;
          }
        }
      }
      // // 命名路由
      // routes: {
      //   '/form': (context)=>FormPage(),
      //   '/search': (context)=>SearchPage()
      // },
    );
  }
}



