import 'package:flutter/material.dart' show ValueNotifier;

import '../models/state_model.dart';

class GameState extends ValueNotifier<StateModel?> {
  GameState(super.value);

  void update(StateModel model) => value = model;
  void reset() => value = null;
}
