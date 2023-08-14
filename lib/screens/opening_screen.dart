import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/images/4.png"))),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Image.asset(
                "assets/images/quizLogo.png",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Text(
                "ItI Quiz app",
                style: GoogleFonts.dancingScript(
                  fontSize: 30,
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "we are creative , enjoy our app",
                style: GoogleFonts.pacifico(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const LoginScreen(),
                          ));
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ],
          )),
    );
  }
}
