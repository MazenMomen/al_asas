part of 'user_data_cubit.dart';

abstract class UserDataState {}

class UserDataInitial extends UserDataState {}

class UserDataLoading extends UserDataState {}

class UserDataLoaded extends UserDataState {
  final UserData userData;

  UserDataLoaded(this.userData);
}

class UserDataError extends UserDataState {
  final String message;

  UserDataError(this.message);
}
