class RegisterRequestModel {
  RegisterRequestModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? passwordConfirm;

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    firstName = json['Fname'];
    lastName = json['Lname'];
    email = json['email'];
    password = json['password'];
    passwordConfirm = json['passwordConfirm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Fname'] = firstName;
    data['Lname'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['passwordConfirm'] = passwordConfirm;

    return data;
  }
}
