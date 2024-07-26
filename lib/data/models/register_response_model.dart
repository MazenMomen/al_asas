import 'dart:convert';

RegisterResponseModel registerResponseModel(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  final String status;
  final String token;
  final UserData data;

  RegisterResponseModel({
    required this.status,
    required this.token,
    required this.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
      status: json['status'] ?? '',
      token: json['token'] ?? '',
      data: UserData.fromJson(json['data'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'token': token,
      'data': data.toJson(),
    };
  }
}

class UserData {
  final String firstName;
  final String? middleName;
  final String lastName;
  final String email;
  final String? photo;
  final String? role;
  final bool? active;
  final String? country;
  final String? city;
  final String? createdAt;
  final String? birthDate;
  final bool? isSingle;
  final bool? confirmed;
  final Phone? phone;
  final String? level;
  final String? lastCertificate;
  final String? educationLevel;
  final String? currentJob;
  final String? id;
  UserData({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.email,
    this.photo,
    this.role,
    this.active,
    this.country,
    this.city,
    this.createdAt,
    this.birthDate,
    this.isSingle,
    this.confirmed,
    this.phone,
    this.level,
    this.lastCertificate,
    this.educationLevel,
    this.currentJob,
    this.id,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      firstName: json['Fname'] ?? '',
      lastName: json['Lname'] ?? '',
      email: json['email'] ?? '',
      role: json['role'] ?? '',
      active: json['active'] ?? false,
      createdAt: json['createdAt'] ?? '',
      isSingle: json['isSingle'] ?? false,
      confirmed: json['confirmed'] ?? false,
      level: json['level'] ?? '',
      id: json['id'] ?? '',
      middleName: '',
      photo: '',
      country: '',
      city: '',
      birthDate: '',
      phone: Phone(countryCode: '', number: '', id: ''),
      lastCertificate: '',
      educationLevel: '',
      currentJob: '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Fname': firstName,
      'Mname': middleName,
      'Lname': lastName,
      'email': email,
      'photo': photo,
      'role': role,
      'active': active,
      'country': country,
      'city': city,
      'createdAt': createdAt,
      'birthDate': birthDate,
      'isSingle': isSingle,
      'confirmed': confirmed,
      'phone': phone?.toJson(),
      'level': level,
      'lastCertificate': lastCertificate,
      'educationLevel': educationLevel,
      'currentJob': currentJob,
      'id': id,
    };
  }
}

class Phone {
  final String countryCode;
  final String number;
  final String id;
  Phone({
    required this.countryCode,
    required this.number,
    required this.id,
  });

  factory Phone.fromJson(Map<String, dynamic> json) {
    return Phone(
      countryCode: json['countryCode'] ?? '',
      number: json['number'] ?? '',
      id: json['id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCode': countryCode,
      'number': number,
      'id': id,
    };
  }
}
