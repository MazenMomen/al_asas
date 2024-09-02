part of 'mcq_cubit.dart';

@immutable
class McqState {
  final Map<int, int> selectedOptions;

  const McqState({required this.selectedOptions});

  int? getOption(int questionIndex) => selectedOptions[questionIndex];
}

final class McqInitial extends McqState {
  McqInitial() : super(selectedOptions: {});
}
