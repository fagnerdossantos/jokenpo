import 'package:flutter/material.dart';
import 'package:jokenpo/utils/consts.dart';

class ResultText extends StatelessWidget {
  final Size size;
  final String result;
  const ResultText({super.key, required this.size, required this.result});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Sizing
      height: height * .05,
      width: width,

      child: Text(
        result,
        style: FontsStyle.medium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
