import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizz_app/screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(2),
        color: const Color.fromARGB(255, 126, 94, 94),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Text(
              "hello Mohamed abdo ,\n your score is 5/10 .",
              style: GoogleFonts.abhayaLibre(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: const Color.fromARGB(255, 66, 4, 53)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.85,
                      MediaQuery.of(context).size.height * 0.055),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: Colors.green,
                  elevation: 20),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpeningScreen()),
                  (route) => false,
                );
              },
              child: Text(
                "play again",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.025),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
