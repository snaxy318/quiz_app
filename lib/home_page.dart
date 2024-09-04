import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.switchScreen,{super.key});

  final void Function() switchScreen;

  void startButton() {
    switchScreen();
    print("in here");
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
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            onPressed: startButton,
            icon:const Icon(Icons.arrow_right_alt,color: Colors.white,),
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