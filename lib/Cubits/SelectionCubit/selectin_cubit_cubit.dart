import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selectin_cubit_state.dart';

class SelectionCubitCubit extends Cubit<SelectinCubitState> {
  SelectionCubitCubit() : super(SelectinCubitInitial());

  void text() {
    emit(ShowText());
  }

  void imag() {
    emit(ShowImage());
  }

  void circle() {
    emit(ShowCircle());
  }

  void nothing() {
    emit(SelectinCubitInitial());
  }
}
