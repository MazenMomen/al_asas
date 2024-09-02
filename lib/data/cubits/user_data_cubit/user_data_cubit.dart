import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/register_response_model.dart';
import '../../../services/shared_service.dart';

part 'user_data_state.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(UserDataInitial()) {
    loadUserData();
  }

  Future<void> loadUserData() async {
    emit(UserDataLoading());
    try {
      final userData = await SharedService.getUserData();
      if (userData != null) {
        emit(UserDataLoaded(userData));
      } else {
        emit(UserDataError('Unable to load user data'));
      }
    } catch (e) {
      emit(UserDataError(e.toString()));
    }
  }
}
