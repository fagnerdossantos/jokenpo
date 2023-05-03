import 'dart:math';

import 'package:jokenpo/src/logic/models/game_elements.dart';

class BotChoiceModel {
  GameElements randBot() =>
      GameElements.values[Random().nextInt(GameElements.values.length)];
}
