import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("嵌套的appbar"),
          bottom: TabBar(
            tabs: [
              Tab(text: "热销",),
              Tab(text: "推荐",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("这个是第一个页面"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("跳转到表单页面并传值"),
                  onPressed: () {
                    // 基础路由实现表单跳转传值
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context)=>FormPage(title: "这个是传入的参数")
                        )
                    );
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text("跳转到表单页面并传值-命名路由"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
