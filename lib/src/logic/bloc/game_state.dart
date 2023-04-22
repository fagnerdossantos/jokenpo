part of 'game_bloc.dart';

@immutable
abstract class GameState {
  final GameStatsModel stats;

  const GameState({required this.stats});
}

class GameInitial extends GameState {
  const GameInitial({required super.stats});
}

class GameWin extends GameState {
  const GameWin({required super.stats});
}

class GameLose extends GameState {
  const GameLose({required super.stats});
}
