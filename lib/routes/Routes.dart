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
import '../pages/Switch.dart';
import '../pages/UserForm.dart';

import '../pages/DatePicker.dart';

import '../pages/Swiper.dart';

import '../pages/Dialog.dart';

import '../pages/HttpRequest.dart';
import '../pages/RichText.dart';

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
  '/switch': (context, {arguments})=>SwitchPage(),
  '/userForm': (context, {arguments})=>UserFormPage(),
  '/datePicker': (context, {arguments})=>DatePickerPage(),
  '/swiper': (context, {arguments})=>SwiperPage(),
  '/dialog': (context, {arguments})=>DialogPage(),
  '/http': (context, {arguments})=>HttpRequestPage(),
  '/richText': (context, {arguments})=>RichTextPage(),
};

// ??????????????????????????????
var onGenerateRoute=(RouteSettings settings) {
  // ????????????
  final String? name = settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name] as Function; // ??????????????????????????????????????????map????????????

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