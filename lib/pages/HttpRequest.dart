import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../res/listData.dart';
import '../components/service/http_request.dart';

class HttpRequestPage extends StatefulWidget {
  const HttpRequestPage({Key? key}) : super(key: key);

  @override
  State<HttpRequestPage> createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> with SingleTickerProviderStateMixin{

  var _getMsg;
  var _postMsg;
  var _getForShowMsg;
  var _localListData = [];

  late TabController _tabController;

  @override
  void initState() {
    Map userInfo = {
      "userName" : "张三",
      "age" : 20
    };

    var a = convert.json.encode(userInfo);
    print(userInfo is Map);
    print(a is String);

    String userInfoStr = '{"userName":"zhangsan", "age": 20}';
    var decodeUserInfo = convert.json.decode(userInfoStr);
    print(decodeUserInfo["userName"]);

    _getDataForShow();

    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      // print("tabbar changed, the tabbar index = ${_tabController.index}" );
    });


    // 在实际的应用生产中通常使用dio
    _useDio();
  }

  /// 在开发的过程中，如果使用到第三方库，建议对于第三方库都进行一次封装
  _useDio() {
    // // 发送网络请求
    // // 1. 创建dio对象
    // final dio = Dio();
    //
    // // 2. 发送网络请求
    // dio.get("https://httpbin.org/get").then((value) {
    //   print(value);
    // });
    //
    // dio.post("https://httpbin.org/post").then((value) {
    //   print(value);
    // });

    MyHttpRequest.request("https://httpbin.org/get", params: {"name" : "why"}).then((value) {
      print(value);
    });
  }


  _getData() async {
    // https://jd.itying.com/api/httpGet
    var apiUrl = Uri.parse("https://jd.itying.com/api/httpGet");
    var response = await http.get(apiUrl);

    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');

    setState(() {
      _getMsg = convert.json.decode(response.body)["msg"];
    });
  }

  _postData() async {
    // https://jd.itying.com/api/httpGet
    var apiUrl = Uri.parse("https://jd.itying.com/api/httpPost");
    var response = await http.post(apiUrl, body: {"userName":"zhangsan", "age": "20"});

    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');

    setState(() {
      _postMsg = convert.json.decode(response.body)["msg"];
    });
  }

  _getDataForShow() async{
    var apiUrl = Uri.parse("https://jd.itying.com/api/pcate");
    var response = await http.get(apiUrl);



    if (response.statusCode == 200) {
      var result = convert.json.decode(response.body);
      print(result);
      // 通过mock数据模拟访问请求返回的信息
      _localListData = listData;
    } else {
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    }

    setState(() {
      _getMsg = convert.json.decode(response.body)["msg"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http 请求相关逻辑验证"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "请求按钮"),
            Tab(text: "渲染get请求数据",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Column(
              children: [
                Text("getMsg = ${_getMsg}"),
                ElevatedButton(
                  child: Text("get 请求"),
                  onPressed: _getData,
                ),
                SizedBox(height: 10,),
                Text("postMsg = ${_postMsg}"),
                ElevatedButton(
                  child: Text("post 请求"),
                  onPressed: _postData,
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text("get 请求, 并且渲染数据"),
                  onPressed: _getDataForShow,
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text("get 请求"),
                  onPressed: () {},
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          _localListData.length > 0 ? ListView.builder(
            itemCount: _localListData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_localListData[index]["title"]),
              );
            },
          ):Text(""),
        ],
      ),
    );
  }
}
