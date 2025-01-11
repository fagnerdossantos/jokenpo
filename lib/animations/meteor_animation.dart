import 'package:flutter/material.dart'
    show BuildContext, Column, StatelessWidget, Widget;

import 'package:lottie/lottie.dart' show Lottie;

class MeteorAnimation extends StatelessWidget {
  const MeteorAnimation({super.key});

  //
  final String path = "assets/animations/meteor.json";

  @override
  Widget build(BuildContext context) {
    // return Lottie.asset(path);
    return Column(
      children: [
        Lottie.asset(path),
        Lottie.asset(path),
      ],
    );
  }
}
