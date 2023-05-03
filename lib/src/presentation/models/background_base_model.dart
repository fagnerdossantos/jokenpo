import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';
import 'package:jokenpo/utils/fonts_style.dart';

class BackgroundBaseModel extends StatelessWidget {
  final Size size;
  final Widget child;
  const BackgroundBaseModel(
      {super.key, required this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text(
          "Jokenpo",
          style: FontsStyle.large,
        ),

        //
        centerTitle: true,
        elevation: 0,

        actions: [
          IconButton(
              onPressed: () =>
                  BlocProvider.of<GameBloc>(context).add(GameRestart()),
              icon: const Icon(Icons.replay)),
        ],
      ),

      body: SizedBox(
        // Size
        height: size.height,
        width: size.width,

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: child,
        ),
      ),
    );
  }
}
