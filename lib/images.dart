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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.yellow
            ),
            child: Image.network(
              "https://s1.ax1x.com/2022/05/12/OBzf9H.jpg",
              alignment: Alignment.bottomRight,
              // color: Colors.blue,
              // colorBlendMode: BlendMode.screen,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              // borderRadius: BorderRadius.all(
              //   Radius.circular(10.0)
              // )
              borderRadius: BorderRadius.circular(150),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://s1.ax1x.com/2022/05/12/OBzf9H.jpg",
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            child: ClipOval(
              child: Image.asset(
                "images/a.png",
                fit: BoxFit.cover,
              )
            ),
          )
        ],
      )
    );
  }

}