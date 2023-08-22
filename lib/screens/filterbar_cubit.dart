import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quizz_app/Cubits/FilterBarCubit/filter_cubit_cubit.dart';

class FilterBarCubit extends StatelessWidget {
  FilterBarCubit({super.key});

  final List text = [
    "data",
    "sport",
    "arts",
    "technology",
    "history",
    "math",
    "sciense"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<FilterCubit, FilterCubitState>(
          builder: (context, state) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //  for (int i = 0; i < 6; i++)
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect) ? Colors.red : Colors.grey,
                          foregroundColor:
                              (state is IsSelect) ? Colors.white : Colors.black,
                        ),
                        child: Text("sciense")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected1();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect1) ? Colors.red : Colors.grey,
                          foregroundColor: (state is IsSelect1)
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text("math")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected2();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect2) ? Colors.red : Colors.grey,
                          foregroundColor: (state is IsSelect2)
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text("history")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected3();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect3) ? Colors.red : Colors.grey,
                          foregroundColor: (state is IsSelect3)
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text("technology")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected4();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect4) ? Colors.red : Colors.grey,
                          foregroundColor: (state is IsSelect4)
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text("arts")),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<FilterCubit>().isSelected5();
                        },
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              (state is IsSelect5) ? Colors.red : Colors.grey,
                          foregroundColor: (state is IsSelect5)
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text("data")),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
