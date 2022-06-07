import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Settings.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    SettingsPage(),
    CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person app bar"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: 25,
        type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮，默认只能有三个
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类"
          ),

        ],
      ),
    );
  }
}