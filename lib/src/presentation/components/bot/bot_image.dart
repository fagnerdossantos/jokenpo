import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:jokenpo/src/logic/models/bot_choice_model.dart';

class BotImage extends StatelessWidget {
  final Size size;
  const BotImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = context.watch<BotChoiceModel>();

    return Image(
      // Size
      height: size.height * .2,

      image: AssetImage(
        controller.botChoice.path,
      ),
    );
  }
}
