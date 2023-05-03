import 'package:flutter/material.dart';
import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/utils/consts.dart';

class BotImage extends StatelessWidget {
  final Size size;
  final GameElements? bot;
  const BotImage({
    Key? key,
    required this.size,
    required this.bot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Circular Shape
      shape: RoundedRectangleBorder(
        borderRadius: RoundedShape.small
      ),

      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(
          15,
        ),

        //
        child: SizedBox(
          height: size.height * .2,
          width: size.width,

          //
          child: Image(
            image: AssetImage(bot?.path ?? "assets/icon/icon.png"),
          ),
        ),
      ),
    );
  }
}
