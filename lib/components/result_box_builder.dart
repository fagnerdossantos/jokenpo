import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/game_viewmodel.dart';
import 'result_box.dart';

class ResultBoxBuilder extends StatelessWidget {
  const ResultBoxBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final viewModel = context.watch<GameViewModel>();
    late final String userImg;
    late final String botImg;

    userImg = viewModel.state.value?.player1.name ?? "elements";
    botImg = viewModel.state.value?.player2.name ?? "elements";

    return Row(
      // Settings
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,

      children: [
        for (String img in [userImg, botImg])
          ResultBox(
            image: "$img.jpg",
          ),
      ],
    );
  }
}
