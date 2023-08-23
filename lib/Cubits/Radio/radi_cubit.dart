import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radi_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial());

  int currentRadio = 0;
  void changeRadio(value) {
    currentRadio = value;
    emit(RadioInitial());
  }
}
