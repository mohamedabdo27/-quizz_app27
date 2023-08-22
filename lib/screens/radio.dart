import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  MyRadio({super.key});
  String? radio = "option1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Radio(
            groupValue: "option1",
            value: radio,
            onChanged: (value) {
              radio = value;
            },
          ),
          Radio(
            groupValue: "option1",
            value: radio,
            onChanged: (value) {
              radio = value;
            },
          ),
          Radio(
            groupValue: "option1",
            value: radio,
            onChanged: (value) {
              radio = value;
            },
          ),
          Radio(
            groupValue: "option1",
            value: radio,
            onChanged: (value) {
              radio = value;
            },
          ),
          Radio(
            groupValue: "option1",
            value: radio,
            onChanged: (value) {
              radio = value;
            },
          ),
        ],
      ),
    ));
  }
}
