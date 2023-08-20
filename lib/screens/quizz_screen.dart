import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz_app/screens/score_screen.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({super.key, required this.categoryMap});
  final Map categoryMap;

  @override
  State<QuizzScreen> createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AlertDialog alertDialog = AlertDialog(
          title: const Text('Do you want to exit the app?'),
          actions: [
            TextButton(
              child: const Text('Stay'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Exit'),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );

        showDialog(
            context: context, builder: (BuildContext context) => alertDialog);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.categoryMap["color"],
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 236, 221, 221),
              foregroundColor: const Color.fromARGB(255, 59, 236, 15),
              radius: 25,
              child: Text(
                "${index + 1}/${(widget.categoryMap["data"] as List).length}",
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text(
                widget.categoryMap["category"],
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 99, 151, 94),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .06),
                    Text(
                      widget.categoryMap["data"][index]["question"],
                      style: const TextStyle(
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
                      for (int i = 0;
                          i <
                              (widget.categoryMap["data"][index]["answers"]
                                      as List)
                                  .length;
                          i++)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.cyanAccent,
                                  minimumSize: const Size(double.infinity, 1),
                                ),
                                onPressed: () {
                                  totalScore += (widget.categoryMap["data"]
                                      [index]["answers"][i]["score"] as int);

                                  setState(() {
                                    if (index + 1 <
                                        (widget.categoryMap["data"] as List)
                                            .length) {
                                      index++;
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              ScoreScreen(
                                            totalNumberOfQuestiond: index + 1,
                                            totalScore: totalScore,
                                          ),
                                        ),
                                      );
                                    }
                                  });
                                },
                                child: Text(
                                  widget.categoryMap["data"][index]["answers"]
                                      [i]["ans"],
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                )),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ); //,
  }
}
