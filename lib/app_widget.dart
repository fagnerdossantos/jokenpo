import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget;
import 'package:jokenpo/controllers/score_state.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider;

import 'package:device_preview/device_preview.dart' show DevicePreview;

import 'controllers/game_state.dart';
import 'controllers/game_viewmodel.dart';
import 'views/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //
      create: (_) => GameViewModel(
          state: GameState(null), score: ScoreState((user: 0, bot: 0))),

      child: MaterialApp(
        // ! Used by device preview
        // ignore: deprecated_member_use
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
