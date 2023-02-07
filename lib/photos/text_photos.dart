import 'package:firt_app/component/simple_title.dart';
import 'package:flutter/material.dart';

class TextPhotos extends StatelessWidget {
  const TextPhotos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: const [
          SimpleTitle(text: "Photos"),
        ],
      ),
    );
  }
}
