import 'package:jokenpo/src/logic/enums/game_enum.dart';

class GameLogicModel {
  // Check win or lose
  bool isUserWinner(
          {required GameEnum userChoice, required GameEnum botChoice}) =>
      winCondition[userChoice]!.contains(botChoice);

  String message({required bool isWinner}) =>
      isWinner ? "Você venceu!" : "Poxa, você perdeu *_*";
}

//! Need to Add withdraww