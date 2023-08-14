import 'package:flutter/material.dart';

class SportItem extends StatelessWidget {
  SportItem({super.key, required this.index});
  final int index;
  List name = ["Messi", "Cristiano ronaldo", 'Karim benzema', 'Loka modritch'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              minimumSize: const Size(300, 1)),
          onPressed: () {},
          child: Text(
            name[index],
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
    );
  }
}
