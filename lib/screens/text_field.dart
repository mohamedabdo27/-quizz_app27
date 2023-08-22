import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //
        child: Container(
          padding: EdgeInsets.all(15),
          child: TextFormField(
            obscureText: visibility,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.paste_sharp),
                labelText: "password",
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {});
                      visibility = !visibility;
                    },
                    child: Icon(
                        visibility ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50))),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
