import 'package:flutter/material.dart';

import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/utils/consts.dart';

class ActionAvatar extends StatelessWidget {
  final Size size;
  final int index;

  const ActionAvatar({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;

    // Avatar
    return Card(
      // Circular Shape
      shape: RoundedRectangleBorder(borderRadius: RoundedShape.large),

      elevation: 3,

      child: Column(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          // Image Label
          Text(
            GameElements.values[index].name,
            style: FontsStyle.small,
          ),

          // Image
          Image(
            height: height * 0.13,
            image: AssetImage(
              GameElements.values[index].path,
            ),
          ),
        ],
      ),
    );
  }
}
