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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,

          title: Row(
            children: [
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.greenAccent,
                  labelColor: Colors.yellow,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  tabs: [
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                    Tab(text: "随意",)
                  ],
              ),)
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
            ),
            Text("这个是第三个页面")
          ],
        ),
      ),
    );
  }
}
