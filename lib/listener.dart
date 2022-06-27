import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "监听方式测试",
      home: ListenerDemo(),
    );
  }
}


/// 可以通过两种方式进行监听
/// Controller
///   1. 可以设置默认值offset
///   2. 可以监听滚动，也可以监听滚动的位置
///   但是没有办法监听开始滚动和结束滚动
/// NotificationListener
///   1. 可以监听开始滚动和结束滚动
///
class ListenerDemo extends StatefulWidget {
  const ListenerDemo({Key? key}) : super(key: key);

  @override
  State<ListenerDemo> createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {

  ScrollController _controller = ScrollController(initialScrollOffset: 100);
  bool _isShowFloatingButton = false;


  @override
  void initState() {
    super.initState();
    
    _controller.addListener(() {
      print("监听到了滚动, 当前滚动的位置 ${_controller.offset}");
      setState(() {
        _isShowFloatingButton = _controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("监听方式测试"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            print("开始滚动");
          } else if (notification is ScrollUpdateNotification) {
            print("正在滚动中, 当前滚动的位置为 ${notification.metrics.pixels}, 总滚动距离为 ${notification.metrics.maxScrollExtent}");
          } else if (notification is ScrollEndNotification) {
            print("结束滚动");
          }
          return true;
        },
        child: ListView.builder(
          controller: _controller,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              leading: Icon(Icons.people),
              title: Text("联系人$index"),
            );
          }
        ),
      ),
      floatingActionButton: _isShowFloatingButton ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
        },
      ) : null,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
