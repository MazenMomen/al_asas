import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:al_asas/data/models/register_request_model.dart';
import 'package:al_asas/data/models/register_response_model.dart';
import 'package:al_asas/services/api_service.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> register() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(RegisterLoading());

      try {
        var registerRequest = RegisterRequestModel(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          email: emailController.text,
          password: passwordController.text,
          passwordConfirm: confirmPasswordController.text,
        );
        final response = await ApiService.register(registerRequest);
        debugPrint('Register Response: ${response?.toJson()}');

        if (response != null) {
          emit(RegisterSuccess(response));
        } else {
          emit(RegisterError("Registration failed. Please try again."));
        }
      } catch (error) {
        debugPrint('Register Error: $error');
        emit(RegisterError(error.toString()));
      }
    }
  }

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
