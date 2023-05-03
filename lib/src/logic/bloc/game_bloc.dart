import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/controllers/bot_choice_viewmodel.dart';
import 'package:jokenpo/src/logic/controllers/game_logic_viewmodel.dart';
import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/src/logic/models/game_status_model.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  // Dependencies
  final BotChoiceViewmodel _bot;
  final GameLogicViewmodel _game;

  GameBloc(this._bot, this._game)
      : super(
          GameInitial(
            stats: GameStatusModel(
              userScore: 0,
              userChoice: null,
              botChoice: null,
              botScore: 0,
              message: "Escolha uma opção!",
            ),
          ),
        ) {
    // Movement
    on<GameMovement>((event, emit) {
      // Choices
      GameElements userChoice = GameElements.values[event.userIndex];
      GameElements botChoice = _bot.bot();

      GameStatusModel result = _game.checkResult(
        userChoice: userChoice,
        botChoice: botChoice,
        previusStats: event.previusStats,
      );

      emit(GameResult(stats: result));
    });

    // Restart
    on<GameRestart>((event, emit) {
      emit(GameInitial(
        stats: GameStatusModel(
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
