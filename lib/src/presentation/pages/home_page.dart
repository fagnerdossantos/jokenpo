import 'package:flutter/material.dart';

import 'package:jokenpo/src/presentation/components/action/action_box.dart';
import 'package:jokenpo/src/presentation/components/bot/bot_image.dart';
import 'package:jokenpo/src/presentation/components/score/result_text.dart';
import 'package:jokenpo/src/presentation/components/score/score_box.dart';

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
                BotImage(
                  size: size,
                ),

                // Actions (user choice)
                ActionBox(size: size),

                // Game Result
                ResultText(
                  size: size,
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
