import 'package:flutter/material.dart';
import 'package:hello_world/res/listData.dart';

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

  Widget _getAspectRatio() {
    return Container(
      width: 300,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container( // 这里的比例是相对于外面的container
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _getCord() {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxx"),
              ),
              ListTile(
                title: Text("地址xxx"),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _getCardWitImage() {
    return ListView(
      children: listData.map((value){
        return _buildCard(value);
      }).toList(),
    );
  }

  Card _buildCard(var value) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 10/9,
            child: Image.network(value["imageUrl"], fit: BoxFit.cover,),
          ),
          ListTile(
            // leading: ClipOval(
            //   child: Image.network(
            //     "https://s1.ax1x.com/2022/05/12/OBz5jI.jpg",
            //     fit: BoxFit.cover,
            //     height: 60,
            //     width: 60,
            //   ),
            // ),
            leading: CircleAvatar( // 该工具的主要功能就是处理头像
              backgroundImage: NetworkImage(value["imageUrl"]),
            ),
            title: Text(value["title"]),
            subtitle: Text(
              value["author"],
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return _getAspectRatio();
    return _getCardWitImage();
  }

}