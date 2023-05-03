import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/src/logic/models/game_outcome.dart';

class GamePlayModel {
  final Map<GameOutcome, String> statusMessage = {
    GameOutcome.winner: "Você venceu!",
    GameOutcome.loser: "Poxa, você perdeu *_*",
    GameOutcome.draw: "Deu empate",
  };

  // Check win or lose
  GameOutcome isUserWinner({
    required GameElements userChoice,
    required GameElements botChoice,
  }) =>
      userChoice == botChoice
          ? GameOutcome.draw
          : winCondition[userChoice]!.contains(botChoice)
              ? GameOutcome.winner
              : GameOutcome.loser;

  String message({required GameOutcome isWinner}) =>
      statusMessage[isWinner]!;
}
