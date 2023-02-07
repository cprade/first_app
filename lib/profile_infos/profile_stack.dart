import 'package:flutter/material.dart';
import '../component/profile_circle.dart';
import 'background_picture.dart';
import 'generic_circle.dart';

class ProfileStack extends StatelessWidget {
  const ProfileStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        BackgroundPicture(height: 200, width: size.width),
        const Padding(
          padding: EdgeInsets.only(top: 127),
          child: GenericCircle(radius: 63),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 130),
          // circleWhite(radius: 62),
          child: ProfileCircle(radius: 60),
        ),
      ],
    );
  }
}
