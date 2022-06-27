import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Person app bar"),
        // ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }

}


/// 因为我们需要把很多的Sliver放在一个CustomScrollView中，所以CustomScrollView有一个slivers属性，里面让我们放对应的一些Sliver：
/// - SliverList：类似于我们之前使用过的ListView
/// - SliverFixedExtentList： 类似于SliverList只是可以设置滚动的高度
/// - SliverGrid： 类似于我们之前使用过的GridView
/// - SliverPadding： 设置Sliver的内边距，因为可能要单独给Sliver设置内边距
/// - SliverAppBar: 添加一个AppBar，通常用来作为CustomScrollView的HeaderView
/// - SliverSafeArea： 设置内容显示在安全区域（比如不让齐刘海挡住我们的内容）
class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return _buildCustomScrollView02();
  }


  CustomScrollView _buildCustomScrollView01() {
    return CustomScrollView(
      slivers: [
        SliverSafeArea( // 允许滚动到延伸到上面的区域，而不仅仅是安全区域
          sliver: SliverPadding(
            padding: EdgeInsets.all(10), // 通过这样的方式来加padding，顶部上的padding就允许滚动到
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5
              ),
              delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx, int index) {
                    return Container(color: Color.fromARGB(
                        255, Random().nextInt(256), Random().nextInt(256),
                        Random().nextInt(256)));
                  },
                  childCount: 100
              ),
            ),
          ),
        ),
      ],
    );
  }

  CustomScrollView _buildCustomScrollView02() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300, // 扩展Sliver appbar的高度
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello world",),
            background: Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg", fit: BoxFit.cover,),
          ),
          // pinned: true,
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.5
          ),
          delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return Container(color: Color.fromARGB(
                    255, Random().nextInt(256), Random().nextInt(256),
                    Random().nextInt(256)));
              },
              childCount: 10
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return ListTile(
                    leading: Icon(Icons.people),
                    title: Text("联系人 $index"),
                  );
                }
            ),

        )
      ],
    );
  }

}