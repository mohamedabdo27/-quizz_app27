import 'package:flutter/material.dart';
import 'package:quizz_app/Cubits/FilterBarCubit/filter_cubit_cubit.dart';
import 'package:quizz_app/Cubits/TextFieldCubit/textfield_cubit_cubit.dart';
import 'package:quizz_app/screens/category_screen.dart';
import 'package:quizz_app/screens/filter_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:quizz_app/screens/opening_screen.dart';
import 'package:quizz_app/screens/radio.dart';
import 'package:quizz_app/screens/text_field.dart';
import 'package:quizz_app/screens/text_field_cubit.dart';

import 'screens/filterbar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<FilterCubit>(
              create: (BuildContext context) => FilterCubit()),
          BlocProvider<TextFieldCubit>(
              create: (BuildContext context) => TextFieldCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // ignore: prefer_const_constructors
          home: MyRadio(),
        ));
  }
}
