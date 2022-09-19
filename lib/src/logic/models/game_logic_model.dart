import 'package:jokenpo/src/logic/enums/game_enum.dart';

class GameLogicModel {
  final List<String> _status = [
    "EMPATOU!.",
    "Você Ganhou. Parabéns!!!",
    "Poxa, não foi dessa vez, mas tente de novo.",
  ];

  // Check win or lose
  bool checker(GameEnum userChoice, GameEnum botChoice) {
    // Rock
    if (userChoice == GameEnum.rock) {
      return rockWin.contains(botChoice);

      // Paper
    } else if (userChoice == GameEnum.paper) {
      return paperWin.contains(botChoice);

      // Scissor
    } else if (userChoice == GameEnum.scissor) {
      return scissorWin.contains(botChoice);

      // Dragon
    } else if (userChoice == GameEnum.dragon) {
      return dragonWin.contains(botChoice);

      // Fire
    } else if (userChoice == GameEnum.fire) {
      return fireWin.contains(botChoice);

      // Lightning
    } else if (userChoice == GameEnum.lightning) {
      return lightningWin.contains(botChoice);

      // Water
    } else if (userChoice == GameEnum.water) {
      return waterWin.contains(botChoice);

      // Wind
    } else {
      return windWin.contains(botChoice);
    }
  }

  // 0 -> draw, 1 -> user wins, 2 -> bot wins
  String message({
    required String user,
    required String bot,
    required int index,
  }) {
    return ("""\n
    Você escolheu $user
    O BOT Escolheu $bot
    ${_status[index]}
    """);
  }
}
