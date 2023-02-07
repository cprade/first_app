import 'package:firt_app/posts/post.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          Post(
            username: "Marie SPIRULINE",
            date: "Il y a 2 heures",
            image: "images/pexels-e.jpg",
            subtext: "Le plus beau ciel étoilé que j'ai vu de ma vie !",
            likes: "22 likes",
            comments: "5 commentaires",
          ),
          Post(
            username: "Marie SPIRULINE",
            date: "Il y a 1 semaine",
            image: "images/pexels-cat.jpg",
            subtext: "Voici Chouchou, adopté cette semaine à la spa",
            likes: "33 likes",
            comments: "7 commentaires",
          ),
          Post(
            username: "Marie SPIRULINE",
            date: "Il y a 2 semaines",
            image: "images/pexels-seb.jpg",
            subtext: "SHAKAPONK FOREVER 🤘🖤",
            likes: "25 likes",
            comments: "6 commentaires",
          ),
        ],
      ),
    );
  }
}
