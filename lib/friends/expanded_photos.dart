import 'package:flutter/material.dart';

class ExpandedPhotos extends StatelessWidget {
  final String? image;
  final String? text;
  const ExpandedPhotos({Key? key, this.image, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(children: [
          Image.asset(image!, fit: BoxFit.fill),
          const SizedBox(width: 5, height: 5),
          Text(text!, style: const TextStyle(fontWeight: FontWeight.bold)),
        ]));
  }
}
