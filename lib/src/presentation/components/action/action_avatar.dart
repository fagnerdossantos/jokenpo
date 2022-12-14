import 'package:flutter/material.dart';

import 'package:jokenpo/src/logic/enums/game_enum.dart';

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
    return CircleAvatar(
      backgroundColor: Colors.deepPurpleAccent,
      child: Column(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          // Image Label
          Text(
            GameEnum.values[index].label,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Image
          Image(
            height: height * 0.13,
            image: AssetImage(
              GameEnum.values[index].path,
            ),
          ),
        ],
      ),
    );
  }
}
