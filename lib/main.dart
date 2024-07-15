import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
                Color.fromARGB(255, 215, 44, 245),
                Color.fromARGB(255, 108, 9, 125),
              ]),
      ),
    ),
  );
}