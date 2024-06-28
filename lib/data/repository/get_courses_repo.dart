import 'dart:convert';

import 'package:al_asas/data/models/get_courses_model.dart';
import 'package:http/http.dart' as http;

class GetCoursesRepo {
  Future<GetCoursesModel?> getCourses() async {
    var response = await http.get(Uri.parse(
        'https://menbar-backend.onrender.com/api/v1/students/courses-stats'));
    var decodedResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      var myResponse = GetCoursesModel.fromJson(decodedResponse);

      return myResponse;
    } else {
      return null;
    }
  }
}
