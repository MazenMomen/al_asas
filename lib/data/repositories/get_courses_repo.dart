import 'dart:convert';
import 'package:al_asas/data/config.dart';
import 'package:http/http.dart' as http;
import 'package:al_asas/data/models/get_courses_model.dart';
import '../../services/shared_service.dart';

class GetCoursesRepo {
  Future<GetCoursesModel?> getCourses() async {
    try {
      var loginDetails = await SharedService.loginDetails();
      final token = loginDetails?.token;

      if (token == null) {
        throw Exception('Token not found');
      }

      var response = await http.get(
        Uri.http(Config.apiURL, Config.coursesAPI),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      var decodedResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        var myResponse = GetCoursesModel.fromJson(decodedResponse);
        return myResponse;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
