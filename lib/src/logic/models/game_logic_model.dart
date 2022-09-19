import 'package:jokenpo/src/logic/enums/game_enum.dart';

class GameLogicModel {
  GameEnum botChoice = GameEnum.dragon;
  late GameEnum userChoice;

  // Check
  void result() {
    if (userChoice == botChoice) {
      _message(user: userChoice.label, bot: botChoice.label, index: 0);
    } else {
      final gameResult = _checker(userChoice, botChoice);
      if (gameResult == true) {
        _message(user: userChoice.label, bot: botChoice.label, index: 1);
      } else {
        _message(user: userChoice.label, bot: botChoice.label, index: 2);
      }
    }
  }

  // Check win or lose
  bool _checker(GameEnum userChoice, GameEnum botChoice) {
    if (userChoice == GameEnum.rock) {
      return rockWin.contains(botChoice);
    } else if (userChoice == GameEnum.paper) {
      return paperWin.contains(botChoice);
    } else if (userChoice == GameEnum.scissor) {
      return scissorWin.contains(botChoice);
    } else if (userChoice == GameEnum.dragon) {
      //print(dragonWin.contains(botChoice));
      return dragonWin.contains(botChoice);
    } else if (userChoice == GameEnum.fire) {
      return fireWin.contains(botChoice);
    } else if (userChoice == GameEnum.lightning) {
      return lightningWin.contains(botChoice);
    } else if (userChoice == GameEnum.water) {
      return waterWin.contains(botChoice);
    } else {
      return windWin.contains(botChoice);
    }
  }

  // 0 -> draw, 1 -> user wins, 2 -> bot wins
  void _message(
      {required String user, required String bot, required int index}) {
    List<String> status = [
      "EMPATOU!.",
      "Você Ganhou. Parabéns!!!",
      "Poxa, não foi dessa vez, mas tente de novo.",
    ];

    print("""\n
    Você escolheu $user
    O BOT Escolheu $bot
    ${status[index]}
    """);
  }
}
