part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class GameRestart extends GameEvent {}

class GameMovement extends GameEvent {
  final GameStatusModel previusStats;
  final int userIndex;

  GameMovement({required this.previusStats, required this.userIndex});
}
