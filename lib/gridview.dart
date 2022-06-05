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

  List<Widget> _getListData() {
    List<Widget> list = [];

    for(var i = 0; i < 20 ; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "这是第$i条数据",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20
          ),
        ),
        color: Colors.yellow,
      ));
    }
    return list;
  }

  List<Widget> _getListDataFromRes() {
    var tmpList = listData.map((value){
      return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.network(value["imageUrl"]),
            SizedBox(height: 10,),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1
          )
        ),
      );
    });
    return tmpList.toList();
  }


  Widget _getListDataFromResBuilder(context, index) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          SizedBox(height: 10,),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.red,
              width: 1
          )
      ),
    );
  }



  List<Widget> _getWidgetList1() {
    return <Widget>[
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
      Text("这是一个文本"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10.0, // 水平元素的距离
    //   mainAxisSpacing: 10.0, // 垂直元素的距离
    //   // childAspectRatio: 0.7, // 改变孩子宽高的比例
    //   padding: EdgeInsets.all(10.0),
    //   // children: _getListData()
    //   children: _getListDataFromRes(),
    // );

    // GridView.count 主要用于静态的列表
    // GridView.builder // 主要用于动态的列表

    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // 用于控制GridView的样式
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      itemBuilder: _getListDataFromResBuilder
    );
  }

}