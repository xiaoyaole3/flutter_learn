import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView( // 增加此组件支持上下滚动
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              // 基础路由实现表单跳转
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>SearchPage())
              );
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到搜索页面-命名路由"),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到搜索页面-命名路由-传递参数"),
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {
                "id": 123
              });
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到商品页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/product', arguments: {
                "product" : "product"
              });
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到AppBarDemo"),
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到顶部切换TabBar"),
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarHeader',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到使用TabBarController实现顶部tabBar切换"),
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到button页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/button',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到表单页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/textField',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到复选框页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/checkBox',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到单选按钮界面"),
            onPressed: () {
              Navigator.pushNamed(context, '/radio',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到切换开关界面"),
            onPressed: () {
              Navigator.pushNamed(context, '/switch',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("TextField、CheckBox、Radio、Switch复合使用"),
            onPressed: () {
              Navigator.pushNamed(context, '/userForm',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("日期选择组件"),
            onPressed: () {
              Navigator.pushNamed(context, '/datePicker',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("轮播图组件"),
            onPressed: () {
              Navigator.pushNamed(context, '/swiper',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("Dialog组件"),
            onPressed: () {
              Navigator.pushNamed(context, '/dialog',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("Http 请求"),
            onPressed: () {
              Navigator.pushNamed(context, '/http',);
            },
          ),
          SizedBox(height: 10,),
          // 命名路由传值
          ElevatedButton(
            child: Text("跳转到富文本页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/richText',);
            },
          ),
        ],
      ),
    );
  }
}
