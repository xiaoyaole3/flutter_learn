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
        appBar: AppBar(
          title: Text("Person app bar"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}


class HomeContent extends StatelessWidget {

  Widget _getDefaultListView() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        ListTile(
          // Icon字体图标和图片图标
          // 1. 字体图标矢量图（放大的时候不会失真）
          // 2. 字体图标可以设置颜色
          // 3. 图标很多时，占据空间更小
          leading: Icon(Icons.settings),
          title: Text("上海全面复工、复产、复市"),
          subtitle: Text("6月1日零点零分，上海全市解除区域临时交通管制措施，恢复正常通行。上海全面恢复全市正常生产生活秩序，商超、店铺、交通、写字楼、园区"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("执法人员开奥迪A6执法 合肥城管回应"),
          subtitle: Text("近日，合肥的城管执法人员在执法时与市民发生争执，且城管人员开奥迪车执法，有市民认为不合程序。"),
        ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text("国家卫健委：不任意增加隔离时间"),
          subtitle: Text("2日，国务院联防联控机制召开发布会。国家卫健委新闻发言人米锋称，要科学落实防控措施，不任意增加隔离时间，不擅自对低风险地区人员采取限制措施"),
        ),
        Container(
          child: Text(
            "I'm a container ",
            style: TextStyle(
                fontSize: 16
            ),
          ),
        ),
        Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
          children: List.generate(20, (index) {
            return Text("Hello world${index}");
          }),
        )
    );
  }

}