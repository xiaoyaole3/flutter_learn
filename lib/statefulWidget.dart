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
        body: HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}


// 自定义有状态组件
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  List list  = [];

  Widget _addNum() {
    return Column(
      children: [
        Chip(label: Text(
            "$countNum"
        )),
        ElevatedButton(
          onPressed: (){
            setState(() { // 只有有状态组件才有，点击之后会将有状态的数据渲染出来
              countNum++;
            });
          },
          child: Text("+1"),
        )
      ],
    );
  }

  Widget _addListContent() {
    return ListView(
      children: [
        Column(
          children: list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: (){
            setState(() {
              list.add("这个是新增的第一条信息");
              list.add("这个是新增的第二条信息");
            });
          },
          child: Text("add info")
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // return _addNum();
    return _addListContent();
  }
}
