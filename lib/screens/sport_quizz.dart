import 'package:flutter/material.dart';
import 'package:quizz_app/screens/score_screen.dart';

class SportQuizz extends StatelessWidget {
  const SportQuizz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 236, 221, 221),
                foregroundColor: Color.fromARGB(255, 59, 236, 15),
                radius: 25,
                child: Text(
                  "4/10",
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.16),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Sport Quizz",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(35)),
              child: Image.asset(
                "assets/images/sportlogo.png",
                height: 50,
              ),
            ),
          ],
        ),
      ),
      body: /*Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: */
          Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 99, 151, 94),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1 / 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Question 1 :",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .06),
                  const Text(
                    "One of the most successful players in the European Champions League",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 27, 47, 63)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 46, 75, 48),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 1 / 8),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: const Size(300, 1)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ScoreScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Messi",
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: const Size(300, 1)),
                          onPressed: () {},
                          child: const Text(
                            "Cristiano ronaldo",
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: const Size(300, 1)),
                          onPressed: () {},
                          child: const Text(
                            'Karim benzema',
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: const Size(300, 1)),
                          onPressed: () {},
                          child: const Text(
                            'Loka modritch',
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ); //,
    //  );
  }
}
