import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

const data = "Learn Flutter the fun way!";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            data,
            style: GoogleFonts.lato(
                color: const Color.fromRGBO(250, 250, 249, 1), fontSize: 30),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey[800],
                foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text(
              "Start Quiz",
            ),
          )
        ],
      ),
    );
  }
}
