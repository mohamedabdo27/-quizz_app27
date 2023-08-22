import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/Cubits/SelectionCubit/selectin_cubit_cubit.dart';

class SelectionCubit extends StatelessWidget {
  const SelectionCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Center(
            child: BlocBuilder<SelectionCubitCubit, SelectinCubitState>(
              builder: (context, state) {
                if (state is ShowText) {
                  return Text("data", style: TextStyle(fontSize: 50));
                } else if (state is ShowImage) {
                  return Image.asset("assets/images/sportLogo1.png");
                } else if (state is ShowCircle) {
                  return CircleAvatar(radius: 200, backgroundColor: Colors.red);
                } else
                  return Text("no item selected",
                      style: TextStyle(fontSize: 50));

                ;
              },
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              context.read<SelectionCubitCubit>().text();
            },
            child: Text("Show text")),
        ElevatedButton(
            onPressed: () {
              context.read<SelectionCubitCubit>().circle();
            },
            child: Text("Show circle")),
        ElevatedButton(
            onPressed: () {
              context.read<SelectionCubitCubit>().imag();
            },
            child: Text("Show image")),
        ElevatedButton(
            onPressed: () {
              context.read<SelectionCubitCubit>().nothing();
            },
            child: Text("reset")),
      ]),
    );
  }
}
