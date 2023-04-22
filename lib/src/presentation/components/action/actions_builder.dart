import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';

import 'package:jokenpo/src/presentation/components/action/action_avatar.dart';

class ActionsBuilder extends StatelessWidget {
  final GameState state;
  final Size size;

  const ActionsBuilder({
    Key? key,
    required this.size,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double width = size.width;

    // Controller

    return ListView.builder(
      // Axis
      scrollDirection: Axis.horizontal,

      itemCount: 8,
      itemBuilder: (context, index) {
        // Return a Circle avatar (rock, paper, scissor ...)
        return SizedBox(
          // Width
          width: width * .45,

          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              // Action
              onTap: () => BlocProvider.of<GameBloc>(context).add(
                GameMovement(previusStats: state.stats, userIndex: index),
              ),

              // Content
              child: ActionAvatar(
                size: size,
                index: index,
              ),
            ),
          ),
        );
      },
    );
  }
}
