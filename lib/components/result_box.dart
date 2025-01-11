import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  final String image;
  const ResultBox({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage("assets/images/$image"),
    );
  }
}
