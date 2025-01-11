import 'package:flutter/material.dart'
    show BuildContext, Column, StatelessWidget, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class SnowAnimation extends StatelessWidget {
  const SnowAnimation({super.key});

  //
  final String path = "assets/animations/snow.json";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(path),
        Lottie.asset(path),
        Lottie.asset(path),
      ],
    );
  }
}
