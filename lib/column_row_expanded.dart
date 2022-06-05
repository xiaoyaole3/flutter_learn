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

class IconContainer extends StatelessWidget{
  double? size = 32.0;
  Color? color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Center(
        child: Icon(
          icon,
          size: size,
          color: Colors.white
        ),
      ),
    );
  }
}


class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
                  height: 180,
                  color: Colors.black,
                )
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network("https://s1.ax1x.com/2022/05/12/OBzf9H.jpg", fit: BoxFit.cover,),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child:  ListView(
                  children: [
                    Container(
                      height: 85,
                      child: Image.network("https://s1.ax1x.com/2022/05/12/OBz5jI.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 85,
                      child: Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg"),
                    )
                  ],
                )
              )
            ),
          ],
        )
      ],
    );
  }
}