import 'package:firt_app/friends/expanded_photos.dart';
import 'package:firt_app/friends/text_friends.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          const TextFriends(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ExpandedPhotos(
                  image: "images/pexels-vinicius.jpg", text: "Sophie"),
              SizedBox(width: 10, height: 10),
              ExpandedPhotos(image: "images/pexels-eng.jpg", text: "Vina"),
              SizedBox(width: 10, height: 10),
              ExpandedPhotos(image: "images/pexels-c.jpg", text: "Clément"),
            ],
          ),
        ],
      ),
    );
  }
}
