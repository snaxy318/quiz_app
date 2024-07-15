import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 215, 44, 245),
                Color.fromARGB(255, 108, 9, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
        ),
      ),
    ),
  );
}