import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:jokenpo/src/logic/controllers/game_logic_controller.dart';
import 'package:jokenpo/src/logic/controllers/score_controller.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';
import 'package:jokenpo/src/logic/models/game_logic_model.dart';
import 'package:jokenpo/src/presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Models
        Provider(
          create: (_) => GameLogicModel(),
        ),

        ChangeNotifierProvider(
          create: (_) => BotChoiceModel(),
        ),

        // Controllers
        ChangeNotifierProvider(
          create: (_) => ScoreController(),
        ),

        ChangeNotifierProvider(
          create: (context) => GameLogicController(
            context.read<GameLogicModel>(),
            context.read<BotChoiceModel>(),
            context.read<ScoreController>(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
