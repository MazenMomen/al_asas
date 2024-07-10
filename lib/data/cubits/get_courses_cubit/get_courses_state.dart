part of 'get_courses_cubit.dart';

sealed class GetCoursesState {}

final class GetCoursesInitial extends GetCoursesState {}

final class GetCoursesLoading extends GetCoursesState {}

final class GetCoursesSuccess extends GetCoursesState {
  final GetCoursesModel response;

  GetCoursesSuccess({required this.response});
}

final class GetCoursesError extends GetCoursesState {
  final String errorMessage;

  GetCoursesError(this.errorMessage);
}
