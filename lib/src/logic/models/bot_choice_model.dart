import 'dart:math';

import 'package:jokenpo/src/logic/enums/game_enum.dart';

class BotChoiceModel {
  GameEnum randBot() =>
      GameEnum.values[Random().nextInt(GameEnum.values.length)];
}
