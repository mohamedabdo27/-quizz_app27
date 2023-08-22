import 'package:bloc/bloc.dart';

part 'filter_cubit_state.dart';

class FilterCubit extends Cubit<FilterCubitState> {
  FilterCubit() : super(FilterCubitInitial());

  String select = "";

  void isSelected() {
    emit(IsSelect());
  }

  void isSelected1() {
    emit(IsSelect1());
  }

  void isSelected2() {
    emit(IsSelect2());
  }

  void isSelected3() {
    emit(IsSelect3());
  }

  void isSelected4() {
    emit(IsSelect4());
  }

  void isSelected5() {
    emit(IsSelect5());
  }
}
