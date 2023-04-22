import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final Size size;
  final int score;

  const Score({
    Key? key,
    required this.size,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;

    // Controller

    return Text(
      score.toString(),
      style: TextStyle(
        fontSize: height * .03,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
