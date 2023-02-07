import 'package:flutter/material.dart';

class AllPhotos extends StatelessWidget {
  const AllPhotos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child:
                  Image.asset("images/pexels-aleksandr.jpg", fit: BoxFit.fill)),
          const SizedBox(width: 10, height: 10),
          Expanded(
              flex: 1,
              child: Image.asset("images/pexels-quang.jpg", fit: BoxFit.fill)),
          const SizedBox(width: 10, height: 10),
          Expanded(
              flex: 1,
              child: Image.asset("images/pexels-cottonbro2.jpg",
                  fit: BoxFit.fill)),
        ],
      ),
    );
  }
}
