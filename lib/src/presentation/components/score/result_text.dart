import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final Size size;
  final String result;
  const ResultText({super.key, required this.size, required this.result});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;

    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),

      //
      child: FittedBox(
        child: Text(
          result,
          style: TextStyle(
            fontSize: height * .03,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
