import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'textfield_cubit_state.dart';

class TextFieldCubit extends Cubit<TextFieldCubitState> {
  TextFieldCubit() : super(TextFieldCubitInitial());

  bool visibility = true;
  void isChange() {
    emit(IsChange());
    visibility = !visibility;
  }
}
