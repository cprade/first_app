import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String? text;
  const SimpleText({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    );
  }
}
