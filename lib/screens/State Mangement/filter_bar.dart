import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  bool isSelect(String text1, String text2) {
    if (text1 == text2) {
      return true;
    } else {
      return false;
    }
  }

  List text = [
    "data",
    "sport",
    "arts",
    "technology",
    "history",
    "math",
    "sciense"
  ];

  String selectText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 6; i++)
                Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: isSelect(text[i], selectText)
                            ? Colors.red
                            : Colors.grey,
                        foregroundColor: isSelect(text[i], selectText)
                            ? Colors.white
                            : Colors.black),
                    onPressed: () {
                      setState(() {
                        selectText = text[i];
                      });
                    },
                    child: Text((text[i])),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
