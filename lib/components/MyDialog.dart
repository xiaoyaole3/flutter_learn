import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  String? title;
  String? content;


  MyDialog({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, // 配置透明
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        child: Text("${title}"),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  )
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text("${content}", textAlign: TextAlign.left,),
              )

            ],
          ),
        )
      ),
    );
  }
}