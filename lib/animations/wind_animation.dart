import 'package:flutter/material.dart'
    show BuildContext, Column, Expanded, StatelessWidget, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class WindAnimation extends StatelessWidget {
  const WindAnimation({super.key});

  final String path = "assets/animations/wind.json";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Lottie.asset(path)),
        Expanded(child: Lottie.asset(path)),
      ],
    );
  }
}
