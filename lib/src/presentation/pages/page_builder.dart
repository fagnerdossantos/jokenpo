import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';
import 'package:jokenpo/src/presentation/pages/home_page.dart';

class PageBuilder extends StatelessWidget {
  const PageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        if (state is GameInitial || state is GameWin) {
          return HomePage(
            state: state,
          );
        }
        return Container();
      },
    );
  }
}
