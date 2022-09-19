import 'dart:math';

import 'package:flutter/widgets.dart';

import 'package:jokenpo/src/logic/enums/game_enum.dart';

class BotChoiceModel extends ChangeNotifier {
  //
  List<GameEnum> enumList = [
    GameEnum.rock,
    GameEnum.paper,
    GameEnum.scissor,
    GameEnum.dragon,
    GameEnum.fire,
    GameEnum.lightning,
    GameEnum.water,
    GameEnum.wind,
  ];

  GameEnum _botChoice = GameEnum.fire;
  GameEnum get botChoice => _botChoice;

  void randBot() {
    final index = Random().nextInt(enumList.length);
    _botChoice = enumList[index];
    notifyListeners();
  }
}
