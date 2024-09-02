import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.status,
    required this.token,
    required this.data,
  });
  late final String status;
  late final String token;
  late final Data data;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? '';
    token = json['token'] ?? '';
    data = Data.fromJson(json['data'] ?? {});
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['status'] = status;
    data_['token'] = token;
    data_['data'] = data.toJson();
    return data_;
  }
}

class Data {
  Data({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.photo,
    required this.role,
    required this.country,
    required this.city,
    required this.birthDate,
    required this.isSingle,
    required this.confirmed,
    required this.phone,
    required this.level,
    required this.lastCertificate,
    required this.educationLevel,
    required this.currentJob,
    required this.id,
  });
  late final String firstName;
  late final String middleName;
  late final String lastName;
  late final String email;
  late final String photo;
  late final String role;
  late final String country;
  late final String city;
  late final String birthDate;
  late final bool isSingle;
  late final bool confirmed;
  late final Phone phone;
  late final String level;
  late final String lastCertificate;
  late final String educationLevel;
  late final String currentJob;
  late final String id;

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['Fname'] ?? '';
    middleName = json['Mname'] ?? '';
    lastName = json['Lname'] ?? '';
    email = json['email'] ?? '';
    photo = json['photo'] ?? '';
    role = json['role'] ?? '';
    country = json['country'] ?? '';
    city = json['city'] ?? '';
    birthDate = json['birthDate'] ?? '';
    isSingle = json['isSingle'] ?? false;
    confirmed = json['confirmed'] ?? false;
    phone = Phone.fromJson(json['phone'] ?? {});
    level = json['level'] ?? '';
    lastCertificate = json['lastCertificate'] ?? '';
    educationLevel = json['educationLevel'] ?? '';
    currentJob = json['currentJob'] ?? '';
    id = json['id'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['Fname'] = firstName;
    data_['Mname'] = middleName;
    data_['Lname'] = lastName;
    data_['email'] = email;
    data_['photo'] = photo;
    data_['role'] = role;
    data_['country'] = country;
    data_['city'] = city;
    data_['birthDate'] = birthDate;
    data_['isSingle'] = isSingle;
    data_['confirmed'] = confirmed;
    data_['phone'] = phone.toJson();
    data_['level'] = level;
    data_['lastCertificate'] = lastCertificate;
    data_['educationLevel'] = educationLevel;
    data_['currentJob'] = currentJob;
    data_['id'] = id;
    return data_;
  }
}

class Phone {
  Phone({
    required this.countryCode,
    required this.number,
    required this.id,
  });
  late final String countryCode;
  late final String number;
  late final String id;

  Phone.fromJson(Map<String, dynamic> json) {
    countryCode = json['countryCode'] ?? '';
    number = json['number'] ?? '';
    id = json['id'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['countryCode'] = countryCode;
    data_['number'] = number;
    data_['id'] = id;
    return data_;
  }
}
