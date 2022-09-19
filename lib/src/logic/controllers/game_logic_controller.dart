import 'package:flutter/widgets.dart';

import 'package:jokenpo/src/logic/controllers/score_controller.dart';
import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';
import 'package:jokenpo/src/logic/models/game_logic_model.dart';

class GameLogicController extends ChangeNotifier {
  //
  final GameLogicModel _gameLogicmodel;
  final BotChoiceModel _botChoiceModel;
  final ScoreController _scoreController;
  GameLogicController(
    this._gameLogicmodel,
    this._botChoiceModel,
    this._scoreController,
  );

  // Defining
  late GameEnum _userChoice;
  String status = "Deslize os circulos com os avatares e escolha um.";

  // Setter end Getter
  set setUserChoice(GameEnum user) => _userChoice = user;
  GameEnum get getUserChoice => _userChoice;

  // Get result
  void gameResult() {
    _botChoiceModel.randBot();
    final botChoice = _botChoiceModel.botChoice;

    // Draw
    if (_userChoice == botChoice) {
      status = _gameLogicmodel.message(
          user: _userChoice.label, bot: botChoice.label, index: 0);
    } else {
      final gameResult = _gameLogicmodel.checker(_userChoice, botChoice);

      // User wins
      if (gameResult == true) {
        _scoreController.userWin();
        status = _gameLogicmodel.message(
            user: _userChoice.label, bot: botChoice.label, index: 1);

        // Bot wins
      } else {
        _scoreController.botWin();
        status = _gameLogicmodel.message(
            user: _userChoice.label, bot: botChoice.label, index: 2);
      }
    }

    notifyListeners();
  }
}
