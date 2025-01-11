import 'package:flutter/widgets.dart' show ChangeNotifier, SizedBox, Widget;
import 'package:jokenpo/controllers/score_state.dart';

import '../models/elements.dart';
import 'game_logic.dart';
import 'game_state.dart';

class GameViewModel extends ChangeNotifier {
  // Init state with a null value
  GameViewModel({required GameState state, required ScoreState score})
      : _state = state,
        _score = score;

  final GameState _state;
  final ScoreState _score;

  final GameLogic _logic = GameLogic();
  bool _isAnimating = false;

  GameState get state => _state;
  ScoreState get score => _score;
  bool get isAnimating => _isAnimating;

  void reset() {
    score.reset();
    notifyListeners();
  }

  String message(Elements player1, Elements player2) {
    String model(
        {required String userChoice,
        required String botChoice,
        required String status}) {
      return "You've chosen $userChoice\nBot's chosen $botChoice\n$status";
    }

    if (player1 == player2) {
      return model(
        userChoice: player1.name,
        botChoice: player2.name,
        status: "It's a tie!",
      );
    }

    if (_logic.check(player1, player2)) {
      return model(
        userChoice: player1.name,
        botChoice: player2.name,
        status: "You're the winner!",
      );
    }

    return model(
      userChoice: player1.name,
      botChoice: player2.name,
      status: "Bot's the winner!",
    );
  }

  void play(Elements player1) async {
    /// Block execution is it's already animating
    if (isAnimating) return;

    final Elements player2 = _logic.randomChoice();
    final bool isUserWinner = _logic.check(player1, player2);

    _isAnimating = true;

    Widget animation = SizedBox();
    if (isUserWinner) {
      animation = _logic.animate(player1);
    }

    // Update Result
    _state.update(
      (
        player1: player1,
        player2: player2,
        animation: animation,
      ),
    );

    // Score
    if (player1 != player2) {
      if (isUserWinner) {
        _score.userWins();
      } else {
        _score.botWins();
      }
    }

    // Notify and delay to show animation
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));

    // Reset state
    _state.reset();
    _isAnimating = false;
    notifyListeners();
  }
}
