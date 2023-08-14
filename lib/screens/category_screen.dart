import 'package:flutter/material.dart';
import 'package:quizz_app/Widgets/category_screen_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            for (int i = 0; i < 4; i++) CategoryItem(index: i),
          ],
        ),
      ),
    );
  }
}
