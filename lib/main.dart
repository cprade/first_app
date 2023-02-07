import 'package:firt_app/about/about.dart';
import 'package:firt_app/friends/friends.dart';
import 'package:firt_app/friends/text_friends.dart';
import 'package:firt_app/photos/photos.dart';
import 'package:firt_app/posts/posts.dart';
import 'package:firt_app/profile_infos/profile.dart';
import 'package:flutter/material.dart';
import 'post.dart';
import 'component/profile_circle.dart';
import 'component/simple_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BasicPage(),
    );
  }
}

// CECI EST LE COURS / EXO UDEMY PAS FINI !

// ignore: must_be_immutable
class BasicPage extends StatelessWidget {
  List<PostUdemy> posts = [
    PostUdemy(
        name: "Marie SPIRULINE",
        imagePath: "images/pexels-e.jpg",
        desc: "Le plus beau ciel étoilé que j'ai vu !"),
    PostUdemy(
        name: "Marie SPIRULINE",
        imagePath: "images/pexels-cat.jpg",
        desc: "Voici Chouchou, adopté ce matin à la spa"),
    PostUdemy(
        name: "Marie SPIRULINE",
        imagePath: "images/pexels-seb.jpg",
        desc: "SHAKAPONK FOREVER 🤘🖤"),
  ];

  // CECI EST LE COURS / EXO UDEMY PAS FINI !

  BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("FaceLook"),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        leading: const Icon(Icons.music_note, color: Colors.white),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Profile(),
                About(),
                Photos(),
                Friends(),
                Posts(),
              ],
            ),
          ),
        ),
      ),
    );
  }

// CECI EST LE COURS / EXO UDEMY PAS FINI !

  Card post({required PostUdemy post}) {
    return Card(
        elevation: 5,
        color: const Color.fromARGB(255, 236, 232, 232),
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          Row(
            children: [
              const ProfileCircle(),
              const SizedBox(width: 5, height: 5),
              Text(
                post.name,
                style: const TextStyle(fontSize: 17),
              ),
              const Spacer(),
              const Text("Il y a 1 jour"),
            ],
          ),
          const SizedBox(width: 10, height: 10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      post.imagePath,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 5, height: 5),
                    Text(post.desc),
                  ],
                ),
              ),
              const SizedBox(width: 10, height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.favorite),
                  Text(post.setLikes()),
                  const Icon(Icons.comment),
                  Text(post.setComments()),
                ],
              ),
            ],
          ),
        ]));
  }
  // CECI EST LE COURS / EXO UDEMY PAS FINI !
}
