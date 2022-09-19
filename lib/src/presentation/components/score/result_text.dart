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

    // Controller
    final controller = context.watch<GameLogicController>();

    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      child: FittedBox(
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
