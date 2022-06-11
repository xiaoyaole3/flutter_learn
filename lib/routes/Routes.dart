import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

import '../pages/users/Login.dart';
import '../pages/users/RegisterFirst.dart';
import '../pages/users/RegisterSecond.dart';
import '../pages/users/RegisterThird.dart';

import '../pages/AppBarDemo.dart';
import '../pages/TabBarHeader.dart';
import '../pages/TabBarController.dart';

import '../pages/tabs/User.dart';

import '../pages/Button.dart';

import '../pages/TextField.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';

final routes={
  '/':(context, {arguments})=>Tabs(),
  '/form':(context, {arguments})=>FormPage(),
  '/search': (context, {arguments})=>SearchPage(arguments: arguments),
  '/product': (context, {arguments})=>ProductPage(arguments: arguments),
  '/productInfo': (context, {arguments})=>ProductInfoPage(arguments: arguments),
  '/login': (context, {arguments})=>LoginPage(),
  '/registerFirst': (context, {arguments})=>RegisterFirstPage(),
  '/registerSecond': (context, {arguments})=>RegisterSecond(),
  '/registerThird': (context, {arguments})=>RegisterThird(),
  '/appBarDemo': (context, {arguments})=>AppBarDemoPage(),
  '/tabBarHeader': (context, {arguments})=>TabBarHeaderPage(),
  '/tabBarController': (context, {arguments})=>TabBarControllerPage(),
  '/user': (context, {arguments})=>UserPage(),
  '/button': (context, {arguments})=>ButtonPage(),
  '/textField': (context, {arguments})=>TextFieldPage(),
  '/checkBox': (context, {arguments})=>CheckBoxPage(),
  '/radio': (context, {arguments})=>RadioPage(),
};

// 这里是声明了一个函数
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name] as Function; // 这一步是获取上面自定义变量中map对应的值

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context)
      );
      return route;
    }
  }
};