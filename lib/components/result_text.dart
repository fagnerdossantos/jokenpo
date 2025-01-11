import 'package:flutter/material.dart';
import 'package:jokenpo/controllers/game_viewmodel.dart';
import 'package:provider/provider.dart';

import '../models/elements.dart';

class ResultText extends StatelessWidget {
  const ResultText({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final viewModel = context.watch<GameViewModel>();

    final Elements? player1 = viewModel.state.value?.player1;
    final Elements? player2 = viewModel.state.value?.player2;

    String? result;

    if (player1 != null && player2 != null) {
      result = viewModel.message(player1, player2);
    }

    return Text(
      result ?? "YOU\nBOT",
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.black.withValues(alpha: .8),
          ),
      textAlign: TextAlign.center,
    );
  }
}
