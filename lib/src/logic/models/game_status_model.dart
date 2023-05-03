import 'package:jokenpo/src/logic/models/game_elements.dart';

class GameStatusModel {
  final int userScore;
  final GameElements? userChoice;

  final GameElements? botChoice;
  final int botScore;

  final String message;

  GameStatusModel({
    required this.userScore,
    required this.userChoice,
    required this.botChoice,
    required this.botScore,
    required this.message,
  });
}
