import 'package:flutter/material.dart';

class Scoreresult extends StatelessWidget {
  final Size size;
  const Scoreresult({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Size
      height: height * .2,
      width: width * .9,

      child: Center(
        child: Text(
          "Escolha uma ação",
          style: TextStyle(
            fontSize: height * .04,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
