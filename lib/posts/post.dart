import 'package:firt_app/posts/post_infos.dart';
import 'package:firt_app/posts/post_photo.dart';
import 'package:flutter/material.dart';
import 'likes_and_comments.dart';

class Post extends StatelessWidget {
  final String? username;
  final String? date;
  final String? image;
  final String? subtext;
  final String? likes;
  final String? comments;
  const Post(
      {Key? key,
      this.username,
      this.date,
      this.image,
      this.subtext,
      this.likes,
      this.comments})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 236, 232, 232),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          PostInfos(username: username, date: date),
          const SizedBox(width: 10, height: 10),
          PostPhoto(
            image: image,
            text: subtext,
          ),
          const SizedBox(width: 10, height: 10),
          LikesComments(
              iconL: Icons.favorite,
              likes: likes,
              iconC: Icons.comment,
              comments: comments),
        ],
      ),
    );
  }
}
