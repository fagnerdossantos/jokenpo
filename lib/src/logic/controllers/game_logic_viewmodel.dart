import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/src/logic/models/game_outcome.dart';
import 'package:jokenpo/src/logic/models/game_play_model.dart';
import 'package:jokenpo/src/logic/models/game_status_model.dart';

class GameLogicViewmodel {
  //
  GameStatusModel checkResult({
    required GameElements userChoice,
    required GameElements botChoice,
    required GameStatusModel previusStats,
  }) {
    // Check user win
    final isUserWinner =
        _model.isUserWinner(userChoice: userChoice, botChoice: botChoice);

    final message = _model.message(isWinner: isUserWinner);

    int botScore = previusStats.botScore;
    int userScore = previusStats.userScore;

    if (isUserWinner == GameOutcome.winner) {
      userScore++;
    } else if (isUserWinner == GameOutcome.loser) {
      botScore++;
    }

    return GameStatusModel(
      userScore: userScore,
      userChoice: userChoice,
      botChoice: botChoice,
      botScore: botScore,
      message: message,
    );
  }

  final GamePlayModel _model;

  GameLogicViewmodel(
    this._model,
  );
}
