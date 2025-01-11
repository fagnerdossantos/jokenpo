import 'package:flutter/material.dart'
    show Align, Alignment, BuildContext, StatelessWidget, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class FireAnimation extends StatelessWidget {
  const FireAnimation({super.key});

  //
  final String path = "assets/animations/fire.json";

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Lottie.asset(path),
    );
  }
}
