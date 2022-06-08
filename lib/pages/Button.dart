import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("这个是一个普通按钮"),
                // 设置按钮是否自动获取焦点
                autofocus: true,
                onPressed: () {},
                // 设置样式
                style: ButtonStyle(
                  // 定义文本的样式
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  // 设置按钮上字体与图标的颜色
                  // foregroundColor: MaterialStateProperty.all(Colors.deepPurple)
                  // 更加优美的方式来设置
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.focused) && !states.contains(MaterialState.pressed)) {
                      // 获取焦点时的颜色
                      return Colors.blue;
                    } else if (states.contains(MaterialState.pressed)) {
                      // 按下时的颜色
                      return Colors.deepOrange;
                    }
                    // 默认使用灰色
                    return Colors.grey;
                  }),
                  // 背景颜色
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    // 设置按下时的背景颜色
                    if(states.contains(MaterialState.pressed)) {
                      return Colors.blue[200];
                    }
                    // 默认不使用颜色
                    return null;
                  }),
                  // 设置水波纹颜色
                  overlayColor: MaterialStateProperty.all(Colors.yellow),
                  // 设置阴影，不使用与这里的TextButton
                  elevation: MaterialStateProperty.all(0.0),
                  // 设置按钮内边距
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  // 设置按钮大小
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  // 设置边框
                  side: MaterialStateProperty.all(BorderSide(
                    color: Colors.grey, 
                    width: 1
                  )),
                  // 外边框装饰，会覆盖side配置的样式
                  shape: MaterialStateProperty.all(StadiumBorder())
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 100,
            child: ElevatedButton(
              child: Text("设置宽度和高度"),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text("自动适配宽高"),
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.abc),
                label: Text("这个是一个带有图标的button")
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("圆角型按钮"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: Text("圆型按钮"),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      CircleBorder(
                        side: BorderSide(
                          color: Colors.greenAccent
                        )
                      )
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              TextButton(
                child: Text("这个是一个文字按钮, 扁平化"),
                onPressed: () {},
              ),
              OutlinedButton(
                child: Text("只有边框的按钮"),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.abc_outlined),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ButtonBar(
                children: [
                  ElevatedButton(
                    child: Text("buttonBar1"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("buttonBar1"),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MyButton(text: "helloWorld", onPressed: () {
                print("hello world is pressed");
              },)
            ],
          )

        ],
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  final text;
  final onPressed;


  MyButton({this.text="", this.onPressed=null});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: Colors.pinkAccent
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
      ),
    );
  }
}

