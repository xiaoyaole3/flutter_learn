import 'package:flutter/material.dart';

class TabBarHeaderPage extends StatelessWidget {
  const TabBarHeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("这个是顶部切换Tab"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              )
            ],
          ),
        ),
        // body 中的tabBarView要和上面的tabBar数量相对应
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text("这个是标题1"),
                ),
                ListTile(
                  title: Text("这个是标题2"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("这个是第二个tabBar"),
                ),
                ListTile(
                  title: Text("这个是第二个tabBar"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
