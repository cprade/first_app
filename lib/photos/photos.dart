import 'package:firt_app/component/divider_grey.dart';
import 'package:firt_app/photos/all_photos.dart';
import 'package:firt_app/photos/text_photos.dart';
import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: const [
          TextPhotos(),
          AllPhotos(),
          DividerGrey(),
        ],
      ),
    );
  }
}
