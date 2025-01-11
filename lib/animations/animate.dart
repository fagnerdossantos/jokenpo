import 'package:flutter/material.dart'
    show
        BuildContext,
        SizedBox,
        StatelessWidget,
        ValueListenableBuilder,
        Widget;
import 'package:provider/provider.dart';

import '../controllers/game_viewmodel.dart';

class Animate extends StatelessWidget {
  const Animate({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final viewModel = context.read<GameViewModel>();

    return ValueListenableBuilder(
      valueListenable: viewModel.state,
      builder: (_, value, __) {
        //
        if (value == null) return SizedBox();

        return value.animation;
      },
    );
  }
}
