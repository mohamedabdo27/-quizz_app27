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
                  for (int i = 0; i < text.length; i++)
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                          onPressed: () {
                            context.read<FilterCubit>().isSelected(i);
                          },
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor:
                                (context.read<FilterCubit>().selectIndex == i)
                                    ? Colors.red
                                    : Colors.grey,
                            foregroundColor:
                                (context.read<FilterCubit>().selectIndex == i)
                                    ? Colors.white
                                    : Colors.black,
                          ),
                          child: Text(text[i])),
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
