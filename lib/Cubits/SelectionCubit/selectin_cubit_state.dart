part of 'selectin_cubit_cubit.dart';

@immutable
sealed class SelectinCubitState {}

final class SelectinCubitInitial extends SelectinCubitState {}

final class ShowText extends SelectinCubitState {}

final class ShowImage extends SelectinCubitState {}

final class ShowCircle extends SelectinCubitState {}
