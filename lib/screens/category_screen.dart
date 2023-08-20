import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz_app/Widgets/category_screen_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AlertDialog alertDialog = AlertDialog(
          title: Text('Do you want to exit the app?'),
          actions: [
            TextButton(
              child: Text('Stay'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('Exit'),
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
        body: Container(
          child: Column(
            children: [
              for (int i = 0; i < 6; i++) CategoryItem(index: i),
            ],
          ),
        ),
      ),
    );
  }
}
