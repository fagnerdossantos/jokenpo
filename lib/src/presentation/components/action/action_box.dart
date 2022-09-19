import 'package:flutter/material.dart';

import 'package:jokenpo/src/presentation/components/action/action_row.dart';

class ActionBox extends StatelessWidget {
  final Size size;
  const ActionBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Size
      height: size.height * .2,
      width: size.width,

      child: ActionRow(
        size: size,
      ),
    );
  }
}
