import 'package:flutter/material.dart';

class LikesComments extends StatelessWidget {
  final IconData? iconL;
  final String? likes;
  final IconData? iconC;
  final String? comments;
  const LikesComments(
      {Key? key, this.iconL, this.likes, this.iconC, this.comments})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(iconL),
        Text(likes!),
        Icon(iconC),
        Text(comments!),
      ],
    );
  }
}
