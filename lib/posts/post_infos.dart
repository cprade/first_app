import 'package:firt_app/component/profile_circle.dart';
import 'package:flutter/material.dart';

class PostInfos extends StatelessWidget {
  final String? username;
  final String? date;
  const PostInfos({Key? key, this.username, this.date}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileCircle(),
        const SizedBox(width: 5, height: 5),
        Text(
          username!,
          style: const TextStyle(fontSize: 17),
        ),
        const Spacer(),
        Text(date!),
      ],
    );
  }
}
