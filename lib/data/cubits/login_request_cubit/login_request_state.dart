part of 'login_request_cubit.dart';

class LoginRequestState {
  final bool isLoading;
  final bool hasError;
  final bool hasData;

  LoginRequestState({
    required this.isLoading,
    required this.hasError,
    required this.hasData,
  });
  LoginRequestState copyWith(isLoading, hasError, hasData) {
    return LoginRequestState(
      isLoading: isLoading,
      hasError: hasError,
      hasData: hasData,
    );
  }
}
