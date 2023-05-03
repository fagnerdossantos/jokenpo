import 'package:flutter/material.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';
import 'package:jokenpo/src/logic/models/game_status_model.dart';

import 'package:jokenpo/src/presentation/components/action/actions_container.dart';
import 'package:jokenpo/src/presentation/components/bot/bot_image.dart';
import 'package:jokenpo/src/presentation/components/score/result_text.dart';
import 'package:jokenpo/src/presentation/components/score/score_box.dart';
import 'package:jokenpo/src/presentation/models/background_base_model.dart';

class HomePage extends StatelessWidget {
  final GameState state;
  const HomePage({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the Screen Size
    final Size size = MediaQuery.of(context).size;

    final GameStatusModel controller = state.stats;

    return BackgroundBaseModel(
      size: size,

      //
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Bot choice
          BotImage(
            size: size,
            bot: controller.botChoice,
          ),

          // Actions (user choice)
          ActionsContainer(
            size: size,
            state: state,
          ),

          // Game Result
          ResultText(
            size: size,
            result: controller.message,
          ),

          // Score
          ScoreBuilder(
            size: size,
            user: controller.userScore,
            bot: controller.botScore,
          ),
        ],
      ),
    );
  }
}
