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

  // 动态列表，自定义方法
  List<Widget> _getData1() {
    return [
      const ListTile(
        title: Text("title 1"),
      ),
      const ListTile(
        title: Text("title 2"),
      ),
      const ListTile(
        title: Text("title 3"),
      )
    ];
  }

  List<Widget> _getData2() {
    var tmpList = listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });

    return tmpList.toList();
  }
  


  List list = [];
  HomeContent() {
    for(var i = 0 ; i < 16 ; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
  }

  ListView _getData3() {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index){
          return list[index];
        }
    );
  }

  ListView _getData4() {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index){
        return ListTile(
          leading: Image.network(listData[index]["imageUrl"]),
          title: Text(listData[index]["title"]),
          subtitle: Text(listData[index]["title"]),
        );
      }
    );
  }

  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["title"]),
    );
  }

  ListView _getData5() {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: _getData2()
    // );
    // return _getData3();

    /**
     * 使用的时候
     * 对函数加()表示是调用方法
     * 不加括号表示是赋值
     */
    // return _getData4();
    return _getData5();
  }

}