import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit() : super(GetCoursesInitial());
}
