import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  void startButton() {
    //...
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            onPressed: startButton,
            icon:Icon(Icons.arrow_right_alt),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              
            ),
            label: const Text(
              'Start quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
