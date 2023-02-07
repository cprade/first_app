import 'package:flutter/material.dart';

class PostPhoto extends StatelessWidget {
  final String? image;
  final String? text;
  const PostPhoto({Key? key, this.image, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(children: [
          Image.asset(
            image!,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 5, height: 5),
          Text(text!),
        ])),
      ],
    );
  }
}
