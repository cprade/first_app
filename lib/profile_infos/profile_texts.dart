import 'package:flutter/material.dart';
import '../component/simple_text.dart';
import '../component/simple_title.dart';

class ProfileTexts extends StatelessWidget {
  const ProfileTexts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: const [
          SimpleTitle(text: "Marie SPIRULINE"),
          SimpleText(
              text:
                  "Un jour les chats domineront le monde mais pas aujourd'hui. C'est l'heure de la sieste 🐱"),
        ],
      ),
    );
  }
}
