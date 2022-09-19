import 'package:flutter/material.dart';

import 'package:jokenpo/src/logic/enums/game_enum.dart';
import 'package:jokenpo/src/logic/models/game_logic_model.dart';
import 'package:jokenpo/src/presentation/components/action/action_box.dart';
import 'package:jokenpo/src/presentation/components/bot/bot_image.dart';
import 'package:jokenpo/src/presentation/components/score/score_box.dart';
import 'package:jokenpo/src/presentation/components/score/score_result.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the Screen Size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      // Use the entire screen
      body: SizedBox(
        // Size
        height: height,
        width: width,

        child: DecoratedBox(
          decoration: const BoxDecoration(
            // Gradient
            gradient: LinearGradient(
              // Alignment
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

              // Colors
              colors: [
                Colors.pink,
                Colors.white,
                Colors.blue,
                Colors.purpleAccent,
                Colors.purple,
              ],
            ),
          ),

          // Safe Area
          child: SafeArea(
            child: Column(
              // Alignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                // Title
                Text(
                  "Jokenpo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * .05,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Bot choice
                const BotImage(),

                // Actions (user choice)
                ActionBox(size: size),

                // Game Result
                Scoreresult(
                  size: size,
                ),

                ElevatedButton(
                  onPressed: () {
                    final controller = GameLogicModel();
                    controller.userChoice = GameEnum.rock;

                    controller.result();
                  },
                  child: const Text("Chicar"),
                ),

                // Score
                ScoreBox(
                  size: size,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<dynamic> imagesLIst = [
  ["Pedra", "assets/images/rock.png"],
  ["Papel", "assets/images/paper.png"],
  ["Tesoura", "assets/images/scissor.png"],
  ["Dragão", "assets/images/dragon.png"],
  ["Fogo", "assets/images/fire.png"],
  ["Relâmpago", "assets/images/lightning.png"],
  ["Água", "assets/images/water.png"],
  ["Vento", "assets/images/wind.png"],
];
