import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final Size size;
  final int index;

  const Score({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;

    return Text(
      index == 0 ? "Você: 3" : "Bot: 1",
      style: TextStyle(
        fontSize: height * .03,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
