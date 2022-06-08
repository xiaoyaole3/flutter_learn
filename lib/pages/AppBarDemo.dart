import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Demo"),
        backgroundColor: Colors.red,
        // leading: Icon(Icons.menu),

        // 导航栏前面加入按钮
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu");
          },
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print("settings");
            },
          )
        ],

        // 标题居中显示
        centerTitle: true,
      ),
      body: Text("hello app bar "),
    );

  }
}
