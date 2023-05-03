import 'package:flutter/material.dart';

import 'package:jokenpo/src/presentation/components/score/score.dart';

class ScoreBuilder extends StatelessWidget {
  final Size size;
  final int user;
  final int bot;
  const ScoreBuilder({
    Key? key,
    required this.size,
    required this.user,
    required this.bot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Map<String, int> score = {"User": user, "Bot": bot};

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: score.entries
          .map((e) => Score(
                id: e.key,
                score: e.value,
              ))
          .toList(),
    );
  }
}
