import 'package:flutter/material.dart'
    show Axis, BuildContext, ListView, SizedBox, StatelessWidget, Widget;
import 'package:provider/provider.dart' show ReadContext;

import '../controllers/game_viewmodel.dart';
import '../models/elements.dart';
import 'element_box.dart';

class ElementBoxBuilder extends StatelessWidget {
  final double width;
  const ElementBoxBuilder({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    //
    final state = context.read<GameViewModel>();

    final List<Elements> elements = Elements.values;

    return SizedBox(
      // Sizing
      height: 120,
      width: width,

      child: ListView.builder(
        // Settings
        itemCount: Elements.values.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          //
          final element = elements[index];

          return ElementBox(
            element: element,
            callback: () => state.play(element),
          );
        },
      ),
    );
  }
}
