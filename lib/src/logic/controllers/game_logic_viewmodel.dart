import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/logic/models/game_logic_model.dart';
import 'package:jokenpo/src/logic/models/game_stats_model.dart';

class GameLogicViewmodel {
  GameStatsModel checkResult(
      {required GameEnum userChoice,
      required GameEnum botChoice,
      required GameStatsModel previusStats}) {
    // Check user win
    final isUserWinner =
        _model.isUserWinner(userChoice: userChoice, botChoice: botChoice);

    final message = _model.message(isWinner: isUserWinner);

    int botScore = previusStats.botScore;
    int userScore = previusStats.userScore;

    return GameStatsModel(
        userScore: (isUserWinner) ? ++userScore : userScore,
        userChoice: userChoice,
        botChoice: botChoice,
        botScore: (isUserWinner) ? botScore : ++botScore,
        message: message);
  }

  final GameLogicModel _model;

  GameLogicViewmodel(
    this._model,
  );
}
