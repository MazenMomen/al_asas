import 'dart:convert';

import 'package:al_asas/data/config.dart';
import 'package:al_asas/data/models/login_request_model.dart';
import 'package:al_asas/services/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/models/login_response_model.dart';
import '../data/models/register_request_model.dart';
import '../data/models/register_response_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<LoginResponseModel?> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.parse(Config.apiURL + Config.loginAPI);
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    if (response.statusCode == 200) {
      var responseModel = loginResponseJson(response.body);
      await SharedService.setLoginDetails(responseModel);
      return responseModel;
    } else {
      return null;
    }
  }

  static Future<RegisterResponseModel?> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.parse(Config.apiURL + Config.registerAPI);
    debugPrint('Register Request: ${jsonEncode(model.toJson())}');

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    debugPrint('Register Response: ${response.statusCode}');
    debugPrint('Register Response Body: ${response.body}');
    if (response.statusCode == 201 || response.statusCode == 200) {
      try {
        var jsonResponse = json.decode(response.body);
        var responseModel = RegisterResponseModel.fromJson(jsonResponse);
        await SharedService.setRegisterDetails(responseModel);
        return responseModel;
      } catch (e) {
        debugPrint('Register Error: $e');
        return null;
      }
    } else {
      throw Exception('Failed to register: ${response.reasonPhrase}');
    }
  }

  static Future<String> getUserProfile() async {
    var loginDetails = await SharedService.loginDetails();
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Basic ${loginDetails!.token}'
    };
    var url = Uri.http(Config.apiURL, Config.profileAPI);
    var response = await client.get(
      url,
      headers: requestHeaders,
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
