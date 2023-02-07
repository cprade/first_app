import 'package:flutter/material.dart';
import 'edit_profile.dart';
import 'edit_icon.dart';

class EditButtons extends StatelessWidget {
  const EditButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const EditProfile(),
            onPressed: () {},
          ),
          const SizedBox(width: 10, height: 10),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const EditIcon(),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
