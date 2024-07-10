class RegisterRequestModel {
  RegisterRequestModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String password;
  late final String passwordConfirm;

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    firstName = json['Fname'];
    lastName = json['Lname'];
    email = json['email'];
    password = json['password'];
    passwordConfirm = json['passwordConfirm'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Fname'] = firstName;
    data['Lname'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['passwordConfirm'] = passwordConfirm;

    return data;
  }
}
