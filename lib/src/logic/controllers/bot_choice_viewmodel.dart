import 'package:jokenpo/src/logic/models/game_elements.dart';
import 'package:jokenpo/src/logic/models/bot_choice_model.dart';

/// Generates a random bot choice and returns it as a GameElements enum value.
class BotChoiceViewmodel {
  final BotChoiceModel _model;
  BotChoiceViewmodel(this._model);

  GameElements bot() => _model.randBot();
}
