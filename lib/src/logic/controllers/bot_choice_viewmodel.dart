import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';

class BotChoiceViewmodel {
  final BotChoiceModel _model;
  BotChoiceViewmodel(this._model);

  GameEnum bot() => _model.randBot();
}
