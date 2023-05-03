part of 'game_bloc.dart';

@immutable
abstract class GameState {
  final GameStatusModel stats;

  const GameState({required this.stats});
}

class GameInitial extends GameState {
  const GameInitial({required super.stats});
}

class GameResult extends GameState {
  const GameResult({required super.stats});
}
