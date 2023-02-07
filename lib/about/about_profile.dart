import 'package:flutter/material.dart';
import '../component/simple_title.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: const [
          SimpleTitle(text: "A propos de moi"),
        ],
      ),
    );
  }
}
