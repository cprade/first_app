import 'package:firt_app/component/simple_title.dart';
import 'package:flutter/material.dart';

class TextFriends extends StatelessWidget {
  const TextFriends({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: const [
          SimpleTitle(text: "Amis:  74"),
        ],
      ),
    );
  }
}
