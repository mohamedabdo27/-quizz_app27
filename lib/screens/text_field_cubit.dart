import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/Cubits/TextFieldCubit/textfield_cubit_cubit.dart';

class MyFieldTextCubit extends StatelessWidget {
  const MyFieldTextCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: BlocBuilder<TextFieldCubit, TextFieldCubitState>(
            builder: (context, state) {
              return TextFormField(
                obscureText: context.read<TextFieldCubit>().visibility,
                onTap: () {},
                decoration: InputDecoration(
                  labelText: "Passwors",
                  suffixIcon: InkWell(
                      onTap: () {
                        context.read<TextFieldCubit>().isChange();
                      },
                      child: Icon((context.read<TextFieldCubit>().visibility)
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
