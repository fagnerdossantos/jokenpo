import 'package:flutter/material.dart';

import 'package:jokenpo/src/presentation/components/score/score.dart';

class ScoreBox extends StatelessWidget {
  final Size size;
  const ScoreBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // User Score
        Score(
          size: size,
          index: 0,
        ),

        // Bot Score
        Score(
          size: size,
          index: 1,
        ),
      ],
    );
  }
}
