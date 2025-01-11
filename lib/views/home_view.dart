import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Column,
        EdgeInsets,
        MainAxisAlignment,
        MediaQuery,
        Padding,
        Scaffold,
        SizedBox,
        Stack,
        StatelessWidget,
        Widget;

import '../animations/animate.dart';
import '../components/element_box_builder.dart';
import '../components/reset_game_btn.dart';
import '../components/result_box_builder.dart';
import '../components/result_text.dart';
import '../components/score_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ScoreRow()),
      //
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              ResultBoxBuilder(),
              SizedBox(
                height: 200,
                width: 250,
                child: Center(child: ResultText()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child:
                    ElementBoxBuilder(width: MediaQuery.sizeOf(context).width),
              ),
            ],
          ),

          // Animations
          Animate(),
        ],
      ),

      floatingActionButton: ResetGameBtn(),
    );
  }
}
