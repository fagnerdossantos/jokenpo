import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:jokenpo/src/logic/controllers/game_logic_controller.dart';

class ResultText extends StatelessWidget {
  final Size size;
  const ResultText({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    // Controller
    final controller = context.watch<GameLogicController>();

    return SizedBox(
      // Size
      height: height * .2,
      width: width * .9,

      child: Center(
        child: Text(
          controller.status,
          style: TextStyle(
            fontSize: height * .03,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
