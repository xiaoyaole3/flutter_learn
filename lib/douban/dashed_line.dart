import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {

  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;


  DashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1.0,
    this.dashedHeight = 1.0,
    this.count = 10,
    this.color = Colors.grey
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // 这里配置SizedBox之间的对齐方式
      children: List.generate(count, (_) {
          return SizedBox(
            width: dashedWidth,
            height: dashedHeight,
            child: DecoratedBox( // Container其实也是使用DecoratedBox进行装饰
              decoration: BoxDecoration(
                color: color
              ),
            ),
          );
        }),
    );
  }
}
