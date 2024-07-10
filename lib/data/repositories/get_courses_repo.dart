import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:al_asas/data/models/get_courses_model.dart';
import '../../services/shared_service.dart';

class GetCoursesRepo {
  Future<GetCoursesModel?> getCourses() async {
    try {
      // Retrieve the token from the cache
      var loginDetails = await SharedService.loginDetails();
      final token = loginDetails
          ?.token; // Assuming the token is stored in loginDetails.token

      // Ensure the token is not null
      if (token == null) {
        throw Exception('Token not found');
      }

      // Make the request with the token included in the headers
      var response = await http.get(
        Uri.parse(
            'https://menbar-backend.onrender.com/api/v1/students/courses-stats'),
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
