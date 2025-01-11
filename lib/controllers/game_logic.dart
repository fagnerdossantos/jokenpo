import 'dart:math' show Random;

import 'package:flutter/widgets.dart' show Widget;

import '../animations/fire_animation.dart';
import '../animations/lightning_animation.dart';
import '../animations/meteor_animation.dart';
import '../animations/snow_animation.dart';
import '../animations/wave_animation.dart';
import '../animations/wind_animation.dart';
import '../models/elements.dart';

class GameLogic {
  //
  final Random _rand = Random();

  //
  bool check(Elements player1, Elements player2) {
    return (_rules[player1]!.contains(player2));
  }

  Elements randomChoice() {
    //
    final List<Elements> values = Elements.values;
    final len = values.length;

    return values[_rand.nextInt(len)];
  }

  // Stores the elements that the elements key wins
  final Map<Elements, List<Elements>> _rules = {
    Elements.fire: [Elements.snow, Elements.wind],
    Elements.lightning: [Elements.water, Elements.fire],
    Elements.rock: [Elements.lightning, Elements.snow],
    Elements.snow: [Elements.water, Elements.fire],
    Elements.water: [Elements.fire, Elements.rock],
    Elements.wind: [Elements.snow, Elements.water],
  };

  // Element to animation
  Widget animate(Elements element) {
    return switch (element) {
      Elements.fire => FireAnimation(),
      Elements.lightning => LightningAnimation(),
      Elements.rock => MeteorAnimation(),
      Elements.snow => SnowAnimation(),
      Elements.water => WaveAnimation(),
      Elements.wind => WindAnimation(),
    };
  }
}
