import 'package:flutter/material.dart'
    show BuildContext, StatelessWidget, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class LightningAnimation extends StatelessWidget {
  const LightningAnimation({super.key});

  //
  final String path = "assets/animations/lightning.json";

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(path);
  }
}
