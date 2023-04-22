import 'package:flutter/material.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';

import 'package:jokenpo/src/presentation/components/action/actions_builder.dart';

class ActionsContainer extends StatelessWidget {
  final Size size;
  final GameState state;
  const ActionsContainer({super.key, required this.size, required this.state});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Size
      height: size.height * .2,
      width: size.width,

      child: ActionsBuilder(
        size: size,
        state: state,
      ),
    );
  }
}
