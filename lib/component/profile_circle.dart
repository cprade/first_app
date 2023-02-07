import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  final double? radius;
  const ProfileCircle({Key? key, this.radius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white10,
      foregroundImage: const AssetImage("images/pexels-cottonbro.jpg"),
    );
  }
}
