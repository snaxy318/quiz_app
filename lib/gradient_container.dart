import 'package:flutter/material.dart';
import 'home_page.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  final start = Alignment.topLeft;
  final end = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: start,
          end: end,
        ),
      ),
      child: HomePage(),
    );
  }
}
