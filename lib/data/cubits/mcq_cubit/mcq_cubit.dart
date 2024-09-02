import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mcq_state.dart';

class McqCubit extends Cubit<McqState> {
  McqCubit() : super(McqInitial());

  void chooseMcq(int questionIndex, int option) {
    final newSelectedOptions = Map<int, int>.from(state.selectedOptions)
      ..[questionIndex] = option;
    emit(McqState(selectedOptions: newSelectedOptions));
  }
}
