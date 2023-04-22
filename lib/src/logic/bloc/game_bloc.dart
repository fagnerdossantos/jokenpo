import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/controllers/bot_choice_viewmodel.dart';
import 'package:jokenpo/src/logic/controllers/game_logic_viewmodel.dart';
import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/logic/models/game_stats_model.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  // Dependencies
  final BotChoiceViewmodel _bot;
  final GameLogicViewmodel _game;

  GameBloc(this._bot, this._game)
      : super(GameInitial(
            stats: GameStatsModel(
                userScore: 0,
                userChoice: null,
                botChoice: null,
                botScore: 0,
                message: "Escolha uma opção!"))) {
    // Movement
    on<GameMovement>((event, emit) {
      // Choices
      GameEnum userChoice = GameEnum.values[event.userIndex];
      GameEnum botChoice = _bot.bot();

      GameStatsModel result = _game.checkResult(
        userChoice: userChoice,
        botChoice: botChoice,
        previusStats: event.previusStats,
      );

      emit(GameWin(stats: result));
    });

    // Restart
    on<GameRestart>((event, emit) {
      emit(GameInitial(
        stats: GameStatsModel(
          userScore: 0,
          userChoice: null,
          botChoice: null,
          botScore: 0,
          message: "Escolha uma opção!",
        ),
      ));
    });
  }
}
