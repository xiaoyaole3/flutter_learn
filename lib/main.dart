import 'package:flutter/material.dart';
import 'package:hello_world/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,

      // 去掉debug图标
      debugShowCheckedModeBanner: false,
    );
  }
}



