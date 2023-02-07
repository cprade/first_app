import 'package:flutter/material.dart';

class BackgroundPicture extends StatelessWidget {
  final double? height;
  final double? width;
  const BackgroundPicture({Key? key, this.height, this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/pexels-edward.jpg",
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }
}
