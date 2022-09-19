import 'package:flutter/material.dart';

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
            onTap: () {},

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
