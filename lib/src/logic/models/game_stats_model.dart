import 'package:jokenpo/src/logic/enums/game_enum.dart';

class GameStatsModel {
  final int userScore;
  final GameEnum? userChoice;

  final GameEnum? botChoice;
  final int botScore;

  final String message;

  GameStatsModel({
    required this.userScore,
    required this.userChoice,
    required this.botChoice,
    required this.botScore,
    required this.message,
  });
}
