import 'package:bloc/bloc.dart';

part 'filter_cubit_state.dart';

class FilterCubit extends Cubit<FilterCubitState> {
  FilterCubit() : super(FilterCubitInitial());

  int selectIndex = 0;

  void isSelected(index) {
    selectIndex = index;
    emit(FilterCubitInitial());
  }
}
