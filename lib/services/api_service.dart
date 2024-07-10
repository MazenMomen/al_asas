import 'dart:convert';

import 'package:al_asas/data/config.dart';
import 'package:al_asas/data/models/login_request_model.dart';
import 'package:al_asas/services/shared_service.dart';
import 'package:flutter/foundation.dart';
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
    debugPrint('Request Headers: $requestHeaders');
    debugPrint('Request Body: ${jsonEncode(model.toJson())}');
    debugPrint('API Response Status Code: ${response.statusCode}');
    debugPrint('API Response Body: ${response.body}');
    if (response.statusCode == 200) {
      var responseModel = loginResponseJson(response.body);
      await SharedService.setLoginDetails(responseModel);
      return responseModel;
    } else {
      debugPrint('Login failed with status: ${response.statusCode}');

      return null;
    }
  }

  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.http(Config.apiURL, Config.registerAPI);
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return registerResponseModel(response.body);
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
