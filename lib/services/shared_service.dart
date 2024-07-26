import 'dart:convert';
import 'package:al_asas/data/models/login_response_model.dart';
import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:flutter/material.dart';

import '../data/models/register_response_model.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");
    return isKeyExist;
  }

  static Future<LoginResponseModel?> loginDetails() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");
    if (isKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_details");
      return loginResponseJson(cacheData.syncData);
    }
    return null;
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(
      key: "login_details",
      syncData: jsonEncode(model.toJson()),
    );
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
    await APICacheManager().deleteCache("register_details");

    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/login',
        (route) => false,
      );
    }
  }

  static Future<bool> isRegistered() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("register_details");
    return isKeyExist;
  }

  static Future<RegisterResponseModel?> registerDetails() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("register_details");
    if (isKeyExist) {
      var cacheData = await APICacheManager().getCacheData("register_details");
      return registerResponseModel(cacheData.syncData);
    }
    return null;
  }

  static Future<void> setRegisterDetails(RegisterResponseModel model) async {
    final registerData = model.toJson();
    debugPrint('Register Data: $registerData');

    if (registerData['status'] == null ||
        registerData['token'] == null ||
        registerData['data'] == null) {
      throw Exception(
          "Failed to save register details: Missing required fields.");
    }
    APICacheDBModel cacheDBModel = APICacheDBModel(
      key: "register_details",
      syncData: jsonEncode(registerData),
    );
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<UserData?> getUserData() async {
    var registrationDetails = await registerDetails();
    if (registrationDetails != null) {
      return _convertToUserData(registrationDetails.data);
    }

    var userLoginDetails = await loginDetails();
    if (userLoginDetails != null) {
      return _convertToUserData(userLoginDetails.data);
    }

    return null;
  }

  static UserData _convertToUserData(dynamic data) {
    if (data is UserData) {
      return data;
    } else if (data is Data) {
      // Assuming Data is the type from LoginResponseModel
      return UserData(
        firstName: data.firstName,
        lastName: data.lastName,
        email: data.email,
      );
    } else {
      throw Exception('Unexpected data type');
    }
  }
}
