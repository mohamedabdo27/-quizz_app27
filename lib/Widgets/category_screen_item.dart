import 'package:flutter/material.dart';
import 'package:quizz_app/Global/data.dart';
import 'package:quizz_app/screens/quizz_screen.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.index});
  final int index;
  final List quizColor = [
    Colors.green,
    const Color.fromARGB(255, 139, 158, 182),
    const Color.fromARGB(255, 83, 57, 64),
    const Color.fromARGB(255, 177, 137, 16),
    const Color.fromARGB(255, 51, 6, 155),
    const Color.fromARGB(255, 184, 4, 34),
  ];

  final List quizzName = [
    "Sports test",
    "History test",
    "General test",
    "Math Test",
    "Computer sciense test",
    "Problems solving"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => QuizzScreen(
                  categoryMap: dataBase[index],
                ),
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
