import 'package:al_asas/data/repositories/get_courses_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:al_asas/data/models/get_courses_model.dart';

part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  final GetCoursesRepo _repository;
  int selectedIndex = 0;

  GetCoursesCubit(this._repository) : super(GetCoursesInitial());

  Future<void> getCourses(int index) async {
    selectedIndex = index;
    emit(GetCoursesLoading());
    try {
      final response = await _repository.getCourses();
      emit(GetCoursesSuccess(response: response!));
    } catch (error) {
      emit(GetCoursesError(error.toString()));
    }
  }
}
