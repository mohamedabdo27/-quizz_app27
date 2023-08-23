import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/Cubits/Radio/radi_cubit.dart';

class MyRadio extends StatelessWidget {
  MyRadio({super.key});
  String? radio = "option1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: BlocBuilder<RadioCubit, RadioState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return RadioListTile(
                title: Text("Title${index + 1}"),
                subtitle: const Text("I am iti student"),
                value: index,
                groupValue: context.read<RadioCubit>().currentRadio,
                onChanged: (value) {
                  context.read<RadioCubit>().changeRadio(value);
                });
          },
        );
      },
    )));
  }
}
