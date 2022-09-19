import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:jokenpo/src/logic/controllers/game_logic_controller.dart';
import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/presentation/components/action/action_avatar.dart';

class ActionRow extends StatelessWidget {
  final Size size;

  const ActionRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double width = size.width;

    // Controller
    final controller = context.read<GameLogicController>();

    return ListView.builder(
      // Axis
      scrollDirection: Axis.horizontal,

      itemCount: 8,
      itemBuilder: (context, index) {
        // Return a Circle avatar (rock, paper, scissor ...)
        return SizedBox(
          // Width
          width: width * .5,

          child: GestureDetector(
            // Action
            onTap: () {
              controller.setUserChoice = GameEnum.values[index];
              controller.gameResult();
            },

            // Content
            child: ActionAvatar(
              size: size,
              index: index,
            ),
          ),
        );
      },
    );
  }
}
