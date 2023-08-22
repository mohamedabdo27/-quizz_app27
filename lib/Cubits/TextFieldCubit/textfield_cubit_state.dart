part of 'textfield_cubit_cubit.dart';

@immutable
sealed class TextFieldCubitState {}

final class TextFieldCubitInitial extends TextFieldCubitState {}

class IsChange extends TextFieldCubitState {}
