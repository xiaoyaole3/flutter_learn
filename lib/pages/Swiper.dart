import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import '../res/listData.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({Key? key}) : super(key: key);

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiper组件"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity, // 配置宽度为屏幕宽度
            child: AspectRatio( // 配置组件的长宽比
              aspectRatio: 16/9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    listData[index]["imageUrl"],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: listData.length,
                scrollDirection: Axis.horizontal,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                loop: true,
              ),
            )
          )
        ],
      )
    );
  }
}
