import 'package:flutter/material.dart'
    show
        AssetImage,
        BorderRadius,
        BoxDecoration,
        BoxFit,
        BuildContext,
        Container,
        DecorationImage,
        EdgeInsets,
        InkWell,
        StatelessWidget,
        Widget;

import '../models/elements.dart';

class ElementBox extends StatelessWidget {
  final Elements element;
  final void Function() callback;
  const ElementBox({
    super.key,
    required this.element,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Action
      onTap: callback,

      child: Container(
        // Sizing
        width: 140,

        margin: EdgeInsets.only(right: 10),

        decoration: BoxDecoration(
          // Bg image
          image: DecorationImage(
            image: AssetImage("assets/images/${element.name}.jpg"),
            fit: BoxFit.cover,
          ),

          // Shape
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
