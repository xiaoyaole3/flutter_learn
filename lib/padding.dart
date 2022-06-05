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


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg", fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg", fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://s1.ax1x.com/2022/05/12/OBz4gA.jpg", fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg", fit: BoxFit.cover,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://s1.ax1x.com/2022/05/12/OBzR4e.jpg", fit: BoxFit.cover,),
          ),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz4gA.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzR4e.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz4gA.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzR4e.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBz4gA.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg", fit: BoxFit.cover,),
          Image.network("https://s1.ax1x.com/2022/05/12/OBzR4e.jpg", fit: BoxFit.cover,),
        ],
      ),
    );
  }

}