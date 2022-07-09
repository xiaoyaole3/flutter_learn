import 'dart:ui';

import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count; // 展示多少个星
  final double size; // 大小
  final Color unselectedColor; // 未选中颜色
  final Color selectedColor; // 选中颜色

  Widget selectedImage;
  Widget unselectedImage;

  StarRating({
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget? unselectedImage,
    Widget? selectedImage
  }) : unselectedImage = unselectedImage ?? Icon(Icons.star_border, color: unselectedColor, size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size,);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildUnselectedStar()
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildSelectedStar()
        ),
      ],
    );
  }

  List<Widget> _buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  List<Widget> _buildSelectedStar() {
    // 1. 创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage;
    
    // 2. 构建满的star
    double oneValue = widget.maxRating / widget.count; // 平均每一星代表几分
    int entireCount = (widget.rating / oneValue).floor(); // 向下取整
    // int entireCount = (widget.rating / oneValue).ceil(); // 向上取整
    for (var i = 0; i < entireCount ; i++) {
      stars.add(star);
    }

    // 3. 构建部分填充star
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final partOfStar = ClipRect(
      clipper: RectClipperStar(leftWidth),
      child: star,
    );
    stars.add(partOfStar);


    return stars;
  }
}


class RectClipperStar extends CustomClipper<Rect>{
  final double width;

  RectClipperStar(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}