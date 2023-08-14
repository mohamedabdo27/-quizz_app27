import 'package:flutter/material.dart';
import 'package:quizz_app/screens/sport_quizz.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.index});
  final int index;
  List quizColor = [
    Colors.green,
    const Color.fromARGB(255, 139, 158, 182),
    const Color.fromARGB(255, 83, 57, 64),
    const Color.fromARGB(255, 75, 95, 3)
  ];
  List quizzPage = [];
  List quizzName = ["Sports test", "History test", "Math test", "General test"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const SportQuizz(),
              ));
        },
        child: Container(
          color: quizColor[index],
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Text(
            quizzName[index],
            style: const TextStyle(fontSize: 30, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
