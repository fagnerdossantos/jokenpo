import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';
import 'package:jokenpo/src/logic/controllers/bot_choice_viewmodel.dart';
import 'package:jokenpo/src/logic/controllers/game_logic_viewmodel.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';
import 'package:jokenpo/src/logic/models/game_logic_model.dart';
import 'package:jokenpo/src/presentation/pages/page_builder.dart';

import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Model
        Provider(create: (_) => BotChoiceModel()),
        Provider(create: (_) => GameLogicModel()),

        // ViewModel
        Provider(
            create: (context) =>
                BotChoiceViewmodel(context.read<BotChoiceModel>())),
        Provider(
            create: (context) =>
                GameLogicViewmodel(context.read<GameLogicModel>())),

        // Bloc
        BlocProvider(
          create: (context) => GameBloc(
            context.read<BotChoiceViewmodel>(),
            context.read<GameLogicViewmodel>(),
          ),
        )
      ],
      child: MaterialApp(
        home: const PageBuilder(),
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
