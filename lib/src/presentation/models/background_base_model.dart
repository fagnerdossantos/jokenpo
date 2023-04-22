import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/src/logic/bloc/game_bloc.dart';

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
        title: const Text("Jokenpo"),
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

        child: child,
      ),
    );
  }
}
