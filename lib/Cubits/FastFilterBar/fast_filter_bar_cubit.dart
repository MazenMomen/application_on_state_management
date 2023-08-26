import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fast_filter_bar_state.dart';

class FastFilterBarCubit extends Cubit<FastFilterBarState> {
  FastFilterBarCubit() : super(FastFilterBarInitial());
  int coloredIndex = 0;
  void colorize(int index) {
    coloredIndex = index;
    emit(FastFilterBarColored());
  }
}
