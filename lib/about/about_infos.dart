import 'package:flutter/material.dart';

class AboutInfos extends StatelessWidget {
  final String? text;
  final IconData? icon;
  const AboutInfos({Key? key, this.text, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(text!),
      ],
    );
  }
}
