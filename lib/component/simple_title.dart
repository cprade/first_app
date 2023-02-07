import 'package:flutter/material.dart';

class SimpleTitle extends StatelessWidget {
  final String? text;
  const SimpleTitle({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      // obligé d'ajouter un null check ( ! )
      text!,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
