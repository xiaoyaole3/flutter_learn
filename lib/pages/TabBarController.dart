import 'package:flutter/material.dart';

// 想要使用tabBarController实现顶部切换tabBar，那么必须继承StatefulWidget
class TabBarControllerPage extends StatefulWidget {
  const TabBarControllerPage({Key? key}) : super(key: key);

  @override
  State<TabBarControllerPage> createState() => _TabBarControllerPageState();
}

// 并且实现SingleTickerProviderStateMixin类
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

  late TabController _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print("tabbar changed, the tabbar index = ${_tabController.index}" );
    });
  }


  // 生命周期销毁函数
  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("使用TabBarController实现顶部滚动条"),
        bottom: TabBar(
          controller: _tabController, // 要注意这里需要指定controller
          tabs: [
            Tab(text: "热销",),
            Tab(text: "推荐",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, // 要注意这里需要指定controller
        children: [
          Text("热销"),
          Text("推荐")
        ],
      )
    );
  }
}
