import 'dart:math' show pi;

import 'package:flutter/material.dart'
    show Align, Alignment, BuildContext, StatelessWidget, Transform, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class WaveAnimation extends StatelessWidget {
  const WaveAnimation({super.key});

  //
  final String path = "assets/animations/wave.json";

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Transform.rotate(
        // 180°
        angle: pi,

        child: Lottie.asset(path),
      ),
    );
  }
}
