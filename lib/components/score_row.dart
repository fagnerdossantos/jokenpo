import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        MainAxisAlignment,
        Row,
        StatelessWidget,
        Text,
        Theme,
        Widget;

import 'package:provider/provider.dart' show WatchContext;

import '../controllers/game_viewmodel.dart';

class ScoreRow extends StatelessWidget {
  const ScoreRow({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final viewModel = context.watch<GameViewModel>();

    final int user = viewModel.score.value.user;
    final int bot = viewModel.score.value.bot;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (String score in ["You $user", "Bot $bot"])
          Text(
            score,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black.withValues(alpha: .8),
                ),
          ),
      ],
    );
  }
}
