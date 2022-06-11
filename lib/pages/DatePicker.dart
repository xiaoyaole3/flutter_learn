import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart'; // 第三方格式时间的库

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({Key? key}) : super(key: key);

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {

  var _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);


  // _showDatePicker() {
  //   showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1980), lastDate: DateTime(2100))
  //       .then((value) {
  //         print(value); // 使用then获取返回的结果
  //   }); // Future 的方法如何获取值
  // }

  _showDatePicker() async {
    // 这里的await表示等待异步任务执行完成, 需要配合async就可以
    var result = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1980), lastDate: DateTime(2100));
    print(result);

    setState(() {
      _nowDate = result!;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);
    print(result);

    setState(() {
      _nowTime = result!;
    });
  }

  @override
  void initState() {
    print(_nowDate.microsecondsSinceEpoch);
    print(_nowDate.toString());

    print(DateTime.fromMicrosecondsSinceEpoch(_nowDate.microsecondsSinceEpoch));

    print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell( // 可以理解为将组件封装为一个可以点击的组件
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${formatDate(_nowDate, [yyyy, '-', mm, '-', dd])}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showDatePicker
              ),
              InkWell( // 可以理解为将组件封装为一个可以点击的组件
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${_nowTime.format(context)}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showTimePicker
              ),
            ],
          )
        ],
      ),
    );
  }
}
