import 'package:flutter/material.dart';

import 'package:jokenpo/src/presentation/components/score/score.dart';

class ScoreBox extends StatelessWidget {
  final Size size;
  final int user;
  final int bot;
  const ScoreBox({
    Key? key,
    required this.size,
    required this.user,
    required this.bot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // User Score
        Score(
          size: size,
          score: user,
        ),

        // Bot Score
        Score(
          size: size,
          score: bot,
        ),
      ],
    );
  }
}
