import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Modifier le profil",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
