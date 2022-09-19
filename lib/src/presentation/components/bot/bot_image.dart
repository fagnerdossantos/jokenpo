import 'package:flutter/material.dart';

class BotImage extends StatelessWidget {
  const BotImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        "assets/images/rock.png",
      ),
    );
  }
}
