import 'package:firt_app/about/about_infos.dart';
import 'package:firt_app/about/about_profile.dart';
import 'package:flutter/material.dart';
import '../component/divider_grey.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: const [
          AboutProfile(),
          AboutInfos(
            icon: Icons.home,
            text: "Annecy",
          ),
          AboutInfos(
            icon: Icons.work,
            text: "Développeuse web",
          ),
          AboutInfos(
            icon: Icons.favorite,
            text: "En couple",
          ),
          DividerGrey(),
        ],
      ),
    );
  }
}
