import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_button_state.dart';

class RadioButtonCubit extends Cubit<RadioButtonState> {
  RadioButtonCubit() : super(RadioButtonInitial());
  int selectedButton = 0;
  void switchRadio(int index) {
    selectedButton = index;
    emit(RadioButtonInitial());
  }
}
