import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/game_viewmodel.dart';

class ResetGameBtn extends StatelessWidget {
  const ResetGameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final viewModel = context.read<GameViewModel>();

    return FloatingActionButton(
      onPressed: () => viewModel.reset(),
      child: Text("Reset"),
    );
  }
}
