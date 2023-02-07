import 'package:firt_app/profile_infos/profile_stack.dart';
import 'package:firt_app/profile_infos/profile_texts.dart';
import 'package:flutter/material.dart';
import '../component/divider_grey.dart';
import '../component/edit_buttons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: const [
          ProfileStack(),
          ProfileTexts(),
          EditButtons(),
          DividerGrey(),
        ],
      ),
    );
  }
}
