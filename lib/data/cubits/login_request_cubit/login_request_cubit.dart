import 'package:al_asas/data/models/login_request_model.dart';
import 'package:al_asas/services/api_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_request_state.dart';

class LoginRequestCubit extends Cubit<LoginRequestState> {
  LoginRequestCubit()
      : super(LoginRequestState(
            hasData: false, hasError: false, isLoading: false));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() async {
    if (formKey.currentState?.validate() ?? false) {
      try {
        emit(state.copyWith(true, false, false));
        var loginRequest = LoginRequestModel(
          email: emailController.text,
          password: passwordController.text,
        );
        var response = await ApiService.login(loginRequest);
        if (response != null) {
          emit(state.copyWith(false, false, true));
        } else {
          emit(state.copyWith(false, true, false));
        }
      } catch (e) {
        emit(state.copyWith(false, true, false));
      }
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
