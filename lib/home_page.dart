import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key}); 

  @override
  State<HomePage> createState(){
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
            ElevatedButton(
              onPressed: startButton,
              child: const Text(
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