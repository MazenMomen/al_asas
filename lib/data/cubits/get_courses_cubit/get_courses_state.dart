part of 'get_courses_cubit.dart';

@immutable
sealed class GetCoursesState {}

final class GetCoursesInitial extends GetCoursesState {}

final class GetCoursesLoading extends GetCoursesState {}

final class GetCoursesSuccess extends GetCoursesState {}

final class GetCoursesError extends GetCoursesState {}
