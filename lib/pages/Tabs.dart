import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Settings.dart';

class Tabs extends StatefulWidget {
  int index;

  Tabs({Key? key, this.index= 0}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(this._currentIndex);

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
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  // child: DrawerHeader(
                  //   child: Text("hello"),
                  //   decoration: BoxDecoration(
                  //     color: Colors.yellow,
                  //     image: DecorationImage(
                  //       image: NetworkImage("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg"),
                  //       fit: BoxFit.cover
                  //     )
                  //   ),
                  // ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text("wander"),
                    accountEmail: Text("xiaoyaole3@163.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    otherAccountsPictures: [
                      Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg")
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
              onTap: () {
                Navigator.of(context).pop(); // 隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(), // 新增一个分割线
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.favorite),
              ),
              title: Text("我喜欢的"),
            ),
          ],
        )
      ),
      endDrawer: Drawer(
        child: Text("这个是一个右侧侧边栏"),
      ),
    );
  }
}