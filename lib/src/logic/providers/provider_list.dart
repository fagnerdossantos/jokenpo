import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';
import 'package:jokenpo/src/logic/controllers/bot_choice_viewmodel.dart';
import 'package:jokenpo/src/logic/controllers/game_logic_viewmodel.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';
import 'package:jokenpo/src/logic/models/game_play_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  // Model
  Provider(create: (_) => BotChoiceModel()),
  Provider(create: (_) => GamePlayModel()),

  // ViewModel
  Provider(
      create: (context) => BotChoiceViewmodel(context.read<BotChoiceModel>())),
  Provider(
      create: (context) => GameLogicViewmodel(context.read<GamePlayModel>())),

  // Bloc
  BlocProvider(
    create: (context) => GameBloc(
      context.read<BotChoiceViewmodel>(),
      context.read<GameLogicViewmodel>(),
    ),
  )
];
