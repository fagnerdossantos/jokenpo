import 'package:flutter/foundation.dart' show ValueNotifier;
import 'package:jokenpo/models/score_model.dart';

class ScoreState extends ValueNotifier<ScoreModel> {
  ScoreState(super.value);

  void userWins() => value = (user: value.user + 1, bot: value.bot);
  void botWins() => value = (user: value.user, bot: value.bot + 1);

  void reset() => value = (user: 0, bot: 0);
}
