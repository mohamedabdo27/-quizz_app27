import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: select(name)),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                name = "text";
              },
              child: Text("Show text")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "circle";
                });
              },
              child: Text("Show circle")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "image";
                });
              },
              child: Text("Show image")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "";
                });
              },
              child: Text("reset")),
        ],
      ),
    ));
  }
}

Widget select(name) {
  if (name == "text") {
    return Text("data", style: TextStyle(fontSize: 50));
  } else if (name == "image") {
    return Image.asset("assets/images/sportLogo1.png");
  } else if (name == "circle") {
    return CircleAvatar(radius: 200, backgroundColor: Colors.red);
  }
  return Text("no item selected", style: TextStyle(fontSize: 50));
}
