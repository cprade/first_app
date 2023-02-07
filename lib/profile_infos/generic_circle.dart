import 'package:flutter/material.dart';

class GenericCircle extends StatelessWidget {
  final double? radius;
  const GenericCircle({Key? key, this.radius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
    );
  }
}
