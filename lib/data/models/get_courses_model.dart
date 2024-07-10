class GetCoursesModel {
  GetCoursesModel({
    required this.status,
    required this.data,
  });
  late final String status;
  late final Data data;

  GetCoursesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['status'] = status;
    data_['data'] = data.toJson();
    return data_;
  }
}

class Data {
  Data({
    required this.courseStat,
  });
  late final List<CourseStat> courseStat;

  Data.fromJson(Map<String, dynamic> json) {
    courseStat = List.from(json['courseStat'])
        .map((e) => CourseStat.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['courseStat'] = courseStat.map((e) => e.toJson()).toList();
    return data_;
  }
}

class CourseStat {
  CourseStat({
    required this.lectureQuizzesScores,
    required this.course,
    required this.student,
    required this.lectureStats,
    required this.id,
  });
  late final List<dynamic> lectureQuizzesScores;
  late final Course course;
  late final String student;
  late final List<LectureStats> lectureStats;
  late final String id;

  CourseStat.fromJson(Map<String, dynamic> json) {
    lectureQuizzesScores =
        List.castFrom<dynamic, dynamic>(json['lectureQuizzesScores']);
    course = Course.fromJson(json['course']);
    student = json['student'];
    lectureStats = List.from(json['lectureStats'])
        .map((e) => LectureStats.fromJson(e))
        .toList();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['lectureQuizzesScores'] = lectureQuizzesScores;
    data_['course'] = course.toJson();
    data_['student'] = student;
    data_['lectureStats'] = lectureStats.map((e) => e.toJson()).toList();
    data_['id'] = id;
    return data_;
  }
}

class Course {
  Course({
    required this.text,
    required this.level,
    required this.description,
    required this.subject,
    required this.prerequisites,
    required this.id,
  });
  late final String text;
  late final int level;
  late final String description;
  late final String subject;
  late final List<dynamic> prerequisites;
  late final String id;

  Course.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    level = json['level'];
    description = json['description'];
    subject = json['subject'];
    prerequisites = List.castFrom<dynamic, dynamic>(json['prerequisites']);
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['text'] = text;
    data_['level'] = level;
    data_['description'] = description;
    data_['subject'] = subject;
    data_['prerequisites'] = prerequisites;
    data_['id'] = id;
    return data_;
  }
}

class LectureStats {
  LectureStats({
    required this.lecture,
    required this.student,
    required this.courseStat,
    required this.done,
    required this.open,
    required this.id,
  });
  late final Lecture lecture;
  late final String student;
  late final String courseStat;
  late final bool done;
  late final bool open;
  late final String id;

  LectureStats.fromJson(Map<String, dynamic> json) {
    lecture = Lecture.fromJson(json['lecture']);
    student = json['student'];
    courseStat = json['courseStat'];
    done = json['done'];
    open = json['open'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['lecture'] = lecture.toJson();
    data_['student'] = student;
    data_['courseStat'] = courseStat;
    data_['done'] = done;
    data_['open'] = open;
    data_['id'] = id;
    return data_;
  }
}

class Lecture {
  Lecture({
    required this.name,
    required this.order,
    required this.course,
    required this.videoLink,
    required this.id,
  });
  late final String name;
  late final int order;
  late final String course;
  late final String videoLink;
  late final String id;

  Lecture.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    order = json['order'];
    course = json['course'];
    videoLink = json['videoLink'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data_ = <String, dynamic>{};
    data_['name'] = name;
    data_['order'] = order;
    data_['course'] = course;
    data_['videoLink'] = videoLink;
    data_['id'] = id;
    return data_;
  }
}
