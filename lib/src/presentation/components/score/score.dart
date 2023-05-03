import 'package:flutter/material.dart';
import 'package:jokenpo/utils/consts.dart';

class Score extends StatelessWidget {
  final String id;
  final int score;

  const Score({
    Key? key,
    required this.score,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$id: $score",
      style: FontsStyle.small,
      textAlign: TextAlign.center,
    );
  }
}
