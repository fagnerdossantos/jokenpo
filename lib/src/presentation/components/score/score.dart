import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:jokenpo/src/logic/controllers/score_controller.dart';

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

    // Controller
    final controller = context.watch<ScoreController>();

    return Text(
      index == 0
          ? "Você: ${controller.userScore}"
          : "Bot: ${controller.botScore}",
      style: TextStyle(
        fontSize: height * .03,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
