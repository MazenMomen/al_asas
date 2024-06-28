class GetCoursesModel {
  String status;
  Data data;

  GetCoursesModel({required this.status, required this.data});

  factory GetCoursesModel.fromJson(Map<String, dynamic> json) {
    return GetCoursesModel(
      status: json['status'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  List<CourseStat> courseStat;

  Data({required this.courseStat});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      courseStat: List<CourseStat>.from(
          json['courseStat'].map((x) => CourseStat.fromJson(x))),
    );
  }
}

class CourseStat {
  String id;
  List<dynamic> lectureQuizzesScores;
  Course course;
  String student;
  int v;
  List<LectureStat> lectureStats;
  bool? passed;
  int? totalLecturesScoreOutOf10;
  int? totalScore;

  CourseStat({
    required this.id,
    required this.lectureQuizzesScores,
    required this.course,
    required this.student,
    required this.v,
    required this.lectureStats,
    this.passed,
    this.totalLecturesScoreOutOf10,
    this.totalScore,
  });

  factory CourseStat.fromJson(Map<String, dynamic> json) {
    return CourseStat(
      id: json['id'],
      lectureQuizzesScores:
          List<dynamic>.from(json['lectureQuizzesScores'].map((x) => x)),
      course: Course.fromJson(json['course']),
      student: json['student'],
      v: json['__v'],
      lectureStats: List<LectureStat>.from(
          json['lectureStats'].map((x) => LectureStat.fromJson(x))),
      passed: json['passed'],
      totalLecturesScoreOutOf10: json['totalLecturesScoreOutOf10'],
      totalScore: json['totalScore'],
    );
  }
}

class Course {
  String id;
  String text;
  int level;
  String description;
  String subject;
  List<dynamic> prerequisites;
  int v;

  Course({
    required this.id,
    required this.text,
    required this.level,
    required this.description,
    required this.subject,
    required this.prerequisites,
    required this.v,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      text: json['text'],
      level: json['level'],
      description: json['description'],
      subject: json['subject'],
      prerequisites: List<dynamic>.from(json['prerequisites'].map((x) => x)),
      v: json['__v'],
    );
  }
}

class LectureStat {
  String id;
  Lecture lecture;
  String student;
  String courseStat;
  bool done;
  bool open;
  int v;

  LectureStat({
    required this.id,
    required this.lecture,
    required this.student,
    required this.courseStat,
    required this.done,
    required this.open,
    required this.v,
  });

  factory LectureStat.fromJson(Map<String, dynamic> json) {
    return LectureStat(
      id: json['id'],
      lecture: Lecture.fromJson(json['lecture']),
      student: json['student'],
      courseStat: json['courseStat'],
      done: json['done'],
      open: json['open'],
      v: json['__v'],
    );
  }
}

class Lecture {
  String id;
  String name;
  int order;
  String course;
  String videoLink;
  int v;

  Lecture({
    required this.id,
    required this.name,
    required this.order,
    required this.course,
    required this.videoLink,
    required this.v,
  });

  factory Lecture.fromJson(Map<String, dynamic> json) {
    return Lecture(
      id: json['id'],
      name: json['name'],
      order: json['order'],
      course: json['course'],
      videoLink: json['videoLink'],
      v: json['__v'],
    );
  }
}
