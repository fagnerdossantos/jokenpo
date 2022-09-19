import 'package:flutter/widgets.dart';

class ScoreController extends ChangeNotifier {
  int userScore = 0;
  int botScore = 0;

  void userWin() {
    userScore++;
    notifyListeners();
  }

  void botWin() {
    botScore++;
    notifyListeners();
  }
}
